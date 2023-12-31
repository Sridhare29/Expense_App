import 'package:flutter/material.dart';

import '../../models/expense_model.dart';

class ExpenseItem extends StatelessWidget {
  const ExpenseItem({required this.expense,super.key});

final Expense expense;
  @override
  Widget build(BuildContext context) {
    return  Card(child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 16),
      child: Column(
          children: [
            Text(expense.title),
            const SizedBox(height: 4),
            Row(
              children: [
                Text('\$${expense.amount.toStringAsFixed(2)}'),//12.3444 -> 12.34
                const Spacer(),
                Row(
                  children: [
                    Icon(CategoryIcons[expense.category]),
                    const SizedBox(width: 8,),
                    Text(expense.date.toString()),
                  ],
                )
              ],
            )
          ],
        ),
    ),
    );
  }
}