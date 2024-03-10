import 'package:amplify_api/amplify_api.dart';
import 'package:flutter/material.dart';
import 'package:splitpro/models/ModelProvider.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:go_router/go_router.dart';

class AddExpenseScreen extends StatefulWidget {
  final ExpenseGroup expenseGroup;

  const AddExpenseScreen({Key? key, required this.expenseGroup})
      : super(key: key);

  @override
  _AddExpenseScreenState createState() => _AddExpenseScreenState();
}

class _AddExpenseScreenState extends State<AddExpenseScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _amountController = TextEditingController();
  final TextEditingController _currencyController = TextEditingController();
  final TextEditingController _purposeController = TextEditingController();
  final TextEditingController _categoryController = TextEditingController();
  final TextEditingController _dateTimeController = TextEditingController();
  final TextEditingController _exchangeRateController = TextEditingController();
  final TextEditingController _convertedAmountController =
      TextEditingController();
  final TextEditingController _receiptController = TextEditingController();
  Future<void> _navigateToGroupDetails({ExpenseGroup? expenseGroup}) async {
    await context.pushNamed('group-details', extra: expenseGroup);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Expense'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(
                controller: _userNameController,
                decoration: InputDecoration(labelText: 'User Name'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a user name';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _amountController,
                decoration: InputDecoration(labelText: 'Amount'),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter an amount';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _currencyController,
                decoration: InputDecoration(labelText: 'Currency'),
              ),
              TextFormField(
                controller: _purposeController,
                decoration: InputDecoration(labelText: 'Purpose'),
              ),
              TextFormField(
                controller: _categoryController,
                decoration: InputDecoration(labelText: 'Category'),
              ),
              TextFormField(
                controller: _dateTimeController,
                decoration: InputDecoration(labelText: 'Date Time'),
              ),
              TextFormField(
                controller: _exchangeRateController,
                decoration: InputDecoration(labelText: 'Exchange Rate'),
                keyboardType: TextInputType.number,
              ),
              TextFormField(
                controller: _convertedAmountController,
                decoration: InputDecoration(labelText: 'Converted Amount'),
                keyboardType: TextInputType.number,
              ),
              TextFormField(
                controller: _receiptController,
                decoration: InputDecoration(labelText: 'Receipt'),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () async {
                  if (_formKey.currentState!.validate()) {
                    // Form is valid, create ExpenseEntry object
                    final newExpenseEntry = ExpenseEntry(
                      userName: _userNameController.text,
                      expenseGroupExpensesId: widget.expenseGroup.id,
                      amount: double.parse(_amountController.text),
                      currency: _currencyController.text,
                      groupId: widget.expenseGroup.id,
                      purpose: _purposeController.text,
                      category: _categoryController.text,
                      dateTime: _dateTimeController.text,
                      exchangeRate: double.parse(_exchangeRateController.text),
                      convertedAmount:
                          double.parse(_convertedAmountController.text),
                      receipt: _receiptController.text,
                    );

                    try {
                      final request = ModelMutations.create(newExpenseEntry);
                      final response =
                          await Amplify.API.mutate(request: request).response;
                      safePrint('Create result: $response');

                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Expense added successfully')),
                      );
                      _navigateToGroupDetails(
                          expenseGroup: widget.expenseGroup);
                    } catch (e) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Error: $e')),
                      );
                    }
                  }
                },
                child: Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _userNameController.dispose();
    _amountController.dispose();
    _currencyController.dispose();
    _purposeController.dispose();
    _categoryController.dispose();
    _dateTimeController.dispose();
    _exchangeRateController.dispose();
    _convertedAmountController.dispose();
    _receiptController.dispose();
    super.dispose();
  }
}
