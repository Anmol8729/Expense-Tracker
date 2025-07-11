import 'package:flutter/material.dart';

class NewExpense extends StatefulWidget {
  const NewExpense({super.key});

  @override
  State<NewExpense> createState() {
    return _NewExpenseState();
  }
}

class _NewExpenseState extends State<NewExpense> {
  final _titleController = TextEditingController();
  final _amountController = TextEditingController();

  @override
  void deactivate() {
    // TODO: implement deactivate
    _titleController.dispose();
    _amountController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextField(
            controller: _titleController,
            autofocus: true,
            maxLength: 50,
            decoration: InputDecoration(labelText: 'Title'),
          ),
          const SizedBox(height: 16),
          TextField(
            maxLength: 10,
            decoration: const InputDecoration(labelText: 'Amount'),
            keyboardType: TextInputType.number,
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              print(_titleController.text);
              // Logic to save the expense
            },
            child: const Text('Save Expense'),
          ),
        ],
      ),
    );
  }
}
