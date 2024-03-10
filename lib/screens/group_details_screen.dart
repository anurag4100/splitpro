import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';
import 'package:splitpro/models/ModelProvider.dart';
import 'package:go_router/go_router.dart';

class GroupDetailsScreen extends StatefulWidget {
  final ExpenseGroup expenseGroup;

  const GroupDetailsScreen({Key? key, required this.expenseGroup})
      : super(key: key);

  @override
  State<GroupDetailsScreen> createState() => _GroupDetailsScreenState();
}

class _GroupDetailsScreenState extends State<GroupDetailsScreen> {
  var _expenseEntry = <ExpenseEntry>[];
  @override
  void initState() {
    super.initState();
    _refreshExpenseEntry();
  }

  Future<void> _navigateToGroupEntry(ExpenseGroup expenseGroup) async {
    await context.pushNamed('add-expense', extra: expenseGroup);
    await _refreshExpense();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Group Details'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              '${widget.expenseGroup.groupName}',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _expenseEntry.length,
              itemBuilder: (context, index) {
                final expenseEntry = _expenseEntry[index];
                if (expenseEntry != null) {
                  return Card(
                    margin:
                        EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                    child: ListTile(
                      title: Text(
                        '${expenseEntry.userName}',
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                              'Amount: ${expenseEntry.amount} ${expenseEntry.currency}'),
                          Text('Purpose: ${expenseEntry.purpose}'),
                          Text('Category: ${expenseEntry.category}'),
                          Text('Date Time: ${expenseEntry.dateTime}'),
                        ],
                      ),
                      trailing: Text(
                        '₹ ${expenseEntry.amount}',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  );
                } else {
                  // If expenseEntry is null, return an empty container
                  return Container();
                }
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _navigateToGroupEntry(
              widget.expenseGroup); // Pass the current expense group
        },
        child: Icon(Icons.add),
      ),
    );
  }

  Future<void> _refreshExpenseEntry() async {
    try {
      final request = ModelQueries.list(ExpenseEntry.classType,
          where: ExpenseEntry.GROUPID.eq(widget.expenseGroup.id));
      final response = await Amplify.API.query(request: request).response;

      final expenseEntry = response.data?.items;
      if (response.errors.isNotEmpty) {
        safePrint('Errors: ${response.errors}');
        return;
      }

      setState(() {
        _expenseEntry = expenseEntry?.whereType<ExpenseEntry>().toList() ?? [];
      });
    } catch (e) {
      safePrint('Error fetching expense groups: $e');
    }
  }

  _refreshExpense() {}
}
