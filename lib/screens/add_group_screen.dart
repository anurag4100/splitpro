import 'package:flutter/material.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_api/amplify_api.dart';
import 'package:splitpro/models/ExpenseGroup.dart';

class ManageGroupScreen extends StatefulWidget {
  const ManageGroupScreen({
    required this.expenseGroup,
    Key? key,
  }) : super(key: key);

  final ExpenseGroup? expenseGroup;

  @override
  State<ManageGroupScreen> createState() => _ManageGroupScreenState();
}

class _ManageGroupScreenState extends State<ManageGroupScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _groupNameController = TextEditingController();
  final TextEditingController _membersController = TextEditingController();

  late final String _titleText;

  bool get _isCreate => _expenseGroup == null;
  ExpenseGroup? get _expenseGroup => widget.expenseGroup;

  @override
  void initState() {
    super.initState();

    final expenseGroup = _expenseGroup;
    if (expenseGroup != null) {
      _groupNameController.text = expenseGroup.groupName;
      _membersController.text = expenseGroup.members.join(', ');
      _titleText = 'Update Group';
    } else {
      _titleText = 'Create Group';
    }
  }

  @override
  void dispose() {
    _groupNameController.dispose();
    _membersController.dispose();
    super.dispose();
  }

  Future<void> submitForm() async {
    if (!_formKey.currentState!.validate()) {
      return;
    }

    // If the form is valid, submit the data
    final groupName = _groupNameController.text;
    final members = _membersController.text.split(',');

    if (_isCreate) {
      // Create a new expense group
      final newGroup = ExpenseGroup(
        groupName: groupName,
        members: members.map((member) => member.trim()).toList(),
      );
      final request = ModelMutations.create(newGroup);
      final response = await Amplify.API.mutate(request: request).response;
      safePrint('Create result: $response');
    } else {
      // Update expense group instead
      final updateExpenseGroup = _expenseGroup!.copyWith(
        groupName: groupName,
        members: members.map((member) => member.trim()).toList(),
      );
      final request = ModelMutations.update(updateExpenseGroup);
      final response = await Amplify.API.mutate(request: request).response;
      safePrint('Update result: $response');
    }

    // Navigate back to previous screen after create/update executes
    if (mounted) {
      Navigator.of(context).pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_titleText),
      ),
      body: Align(
        alignment: Alignment.topCenter,
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 800),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFormField(
                      controller: _groupNameController,
                      decoration: const InputDecoration(
                        labelText: 'Group Name (required)',
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter a group name';
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      controller: _membersController,
                      decoration: const InputDecoration(
                        labelText: 'Members (comma separated)',
                      ),
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: submitForm,
                      child: Text(_titleText),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
