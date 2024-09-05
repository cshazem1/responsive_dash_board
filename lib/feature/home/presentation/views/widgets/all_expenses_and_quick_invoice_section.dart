import 'package:flutter/material.dart';
import 'package:responsive_dash_board/feature/home/presentation/views/widgets/quick_invoice.dart';

import 'all_expenses.dart';

class AllExpensesAndQuickInvoiceSection extends StatelessWidget {
  const AllExpensesAndQuickInvoiceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 12,
        ),
        Center(child: AllExpenses()),
        SizedBox(
          height: 12,
        ),
        Expanded(child: QuickInvoice())
      ],
    );
  }
}
