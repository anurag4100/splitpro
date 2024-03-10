import 'package:flutter/material.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_api/amplify_api.dart';
import 'package:splitpro/models/ModelProvider.dart';
import 'package:go_router/go_router.dart';

class GroupScreen extends StatefulWidget {
  const GroupScreen({Key? key}) : super(key: key);

  @override
  State<GroupScreen> createState() => _GroupScreenState();
}

class _GroupScreenState extends State<GroupScreen> {
  var _expenseGroups = <ExpenseGroup>[];

  @override
  void initState() {
    super.initState();
    _refreshExpenseGroups();
  }

  Future<void> _refreshExpenseGroups() async {
    try {
      final request = ModelQueries.list(ExpenseGroup.classType);
      final response = await Amplify.API.query(request: request).response;

      final expenseGroups = response.data?.items;
      if (response.errors.isNotEmpty) {
        safePrint('Errors: ${response.errors}');
        return;
      }

      setState(() {
        _expenseGroups =
            expenseGroups?.whereType<ExpenseGroup>().toList() ?? [];
      });
    } catch (e) {
      safePrint('Error fetching expense groups: $e');
    }
  }

  Future<void> _navigateToGroupEntry({ExpenseGroup? expenseGroup}) async {
    await context.pushNamed('manage-group', extra: expenseGroup);
    await _refreshExpenseGroups();
  }

  // navigate to group details screen
  Future<void> _navigateToGroupDetails({ExpenseGroup? expenseGroup}) async {
    await context.pushNamed('group-details', extra: expenseGroup);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Groups'),
      ),
      body: RefreshIndicator(
        onRefresh: _refreshExpenseGroups,
        child: ListView.builder(
          itemCount: _expenseGroups.length,
          itemBuilder: (context, index) {
            final expenseGroup = _expenseGroups[index];
            return GestureDetector(
              onTap: () {
                _navigateToGroupDetails(expenseGroup: expenseGroup);
              },
              child: Card(
                margin: EdgeInsets.all(8.0),
                child: ListTile(
                  title: Text(expenseGroup.groupName),
                  subtitle: Text('Members: ${expenseGroup.members.join(', ')}'),
                  trailing: Text(
                    '\₹${expenseGroup.expenses?.fold<double>(0, (prev, e) => prev + e.amount).toStringAsFixed(2) ?? '0'}',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                  leading: CircleAvatar(
                    child: Icon(Icons.group),
                  ),
                ),
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _navigateToGroupEntry,
        child: const Icon(Icons.add),
      ),
    );
  }
}
