import 'package:flutter/material.dart';

import 'package:expense_tracker/models/expense.dart';

class ExpenseItem extends StatelessWidget {
  const ExpenseItem(this.expense, {super.key});

  final Expense expense;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Row(
          children: [
            // Expense title and amount on the left
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  expense.title,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                Text('\$${expense.amount.toStringAsFixed(2)}'),
              ],
            ),
            const Spacer(),
            // Date and icon on the right
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  '${expense.date.day}/${expense.date.month}/${expense.date.year}',
                  style: const TextStyle(
                    color: Color.fromARGB(255, 53, 52, 52),
                  ),
                ),
                Icon(_getCategoryIcon(expense.category)),
              ],
            ),
          ],
        ),
      ),
    );
  }

  IconData _getCategoryIcon(Category category) {
    switch (category) {
      case Category.food:
        return Icons.fastfood;
      case Category.travel:
        return Icons.directions_car;
      // Add more cases as needed
      default:
        return Icons.attach_money;
    }
  }
}
