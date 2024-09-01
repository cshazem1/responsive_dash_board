import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/feature/home/presentation/views/widgets/all_expenses_header.dart';
import 'package:responsive_dash_board/feature/home/presentation/views/widgets/all_expenses_item.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: Colors.white),
      child: const Column(
        children: [
          AllExpensesHeader(),
          AllExpensesItem()
        ],
      ),
    );
  }
}


