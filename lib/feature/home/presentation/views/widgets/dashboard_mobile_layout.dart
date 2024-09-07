import 'package:flutter/material.dart';

import 'all_expenses_and_quick_invoice_section.dart';
import 'income_section.dart';
import 'my_card_section_and_transactionHistory.dart';

class DashBoardMobileLayout extends StatelessWidget {
  const DashBoardMobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(child: Column(
      children: [
        SizedBox(height: 24,),
        AllExpensesAndQuickInvoiceSection(),
        SizedBox(height: 24,),
        MyCardSectionAndTransactionHistory(),
        SizedBox(height: 24,),
        IncomeSection()
      ],
    ));
  }
}
