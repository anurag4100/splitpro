import 'package:amplify_api/amplify_api.dart';
import 'package:flutter/material.dart';
import 'package:splitpro/models/ModelProvider.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

class AddExpenseScreen extends StatefulWidget {
  final ExpenseGroup expenseGroup;

  const AddExpenseScreen({Key? key, required this.expenseGroup})
      : super(key: key);

  @override
  _AddExpenseScreenState createState() => _AddExpenseScreenState();
}

class _AddExpenseScreenState extends State<AddExpenseScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _amountController = TextEditingController();
  final TextEditingController _currencyController = TextEditingController();
  final TextEditingController _purposeController = TextEditingController();
  final TextEditingController _categoryController = TextEditingController();
  final TextEditingController _dateTimeController = TextEditingController();
  final TextEditingController _exchangeRateController = TextEditingController();
  final TextEditingController _convertedAmountController =
      TextEditingController();
  final TextEditingController _receiptController = TextEditingController();

  late List<String> _userNames = [];
  String? _selectedUserName = null;
  String? _selectedCategory = null;
  Future<void> _navigateToGroupDetails({ExpenseGroup? expenseGroup}) async {
    await context.pushNamed('group-details', extra: expenseGroup);
  }

  @override
  void initState() {
    super.initState();
    _dateTimeController.text = DateFormat('yyyy-MM-dd').format(DateTime.now());
    _loadUsers();
  }

  Future<void> _loadUsers() async {
    try {
      final request = ModelQueries.list(ExpenseGroup.classType,
          where: ExpenseGroup.ID.eq(widget.expenseGroup.id));
      final response = await Amplify.API.query(request: request).response;

      final users = response.data?.items
          .map((e) => e?.members.map((e) => e))
          .expand((element) => element!)
          .toSet()
          .toList();
      if (response.errors.isNotEmpty) {
        safePrint('Errors: ${response.errors}');
        return;
      }
      setState(() {
        _userNames = users!;
      });
      setState(() {
        _selectedUserName = _userNames[0];
      });
    } catch (e) {
      print('Error loading users: $e');
    }
  }

  DateTime _selectedDate = DateTime.now();
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
        _dateTimeController.text =
            _selectedDate.toString(); // Update text field
      });
    }
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
              DropdownButtonFormField<String>(
                value: _selectedUserName,
                items: _userNames
                    .map<DropdownMenuItem<String>>(
                      (String value) => DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      ),
                    )
                    .toList(),
                onChanged: (String? value) {
                  setState(() {
                    _selectedUserName = value;
                  });
                },
                decoration: InputDecoration(
                  labelText: 'Who paid?',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please select a user name';
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
                controller: _purposeController,
                decoration: InputDecoration(labelText: 'Purpose'),
              ),
              DropdownButtonFormField<String>(
                value: _selectedCategory ?? 'Grocery',
                onChanged: (String? newValue) {
                  setState(() {
                    _selectedCategory = newValue;
                  });
                },
                items: <String>['Grocery', 'Medical', 'Leisure', 'Others']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                decoration: InputDecoration(
                  labelText: 'Category',
                ),
              ),
              TextField(
                controller: _dateTimeController,
                decoration: InputDecoration(
                  labelText: 'Date Time',
                  suffixIcon: IconButton(
                    onPressed: () => _selectDate(context),
                    icon: Icon(Icons.calendar_today),
                  ),
                ),
                readOnly: true, // Disable editing directly
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
                      userName: _selectedUserName!,
                      expenseGroupExpensesId: widget.expenseGroup.id,
                      amount: double.parse(_amountController.text),
                      currency: 'INR',
                      groupId: widget.expenseGroup.id,
                      purpose: _purposeController.text,
                      category: _categoryController.text,
                      dateTime: _dateTimeController.text,
                      exchangeRate: 1,
                      convertedAmount: double.parse(_amountController.text),
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
