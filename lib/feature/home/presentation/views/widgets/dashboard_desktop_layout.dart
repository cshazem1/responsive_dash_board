import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/feature/home/presentation/views/widgets/custom_drawer.dart';
import 'all_expenses_and_quick_invoice_section.dart';
import 'income_section.dart';
import 'my_card_section_and_transactionHistory.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: CustomDrawer(),
        ),
        SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 2,
          child:
              SingleChildScrollView(child: AllExpensesAndQuickInvoiceSection()),
        ),
        SizedBox(
          width: 24,
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Column(

              children: [
                SizedBox(height: 12,),
                MyCardSectionAndTransactionHistory(), IncomeSection()],
            ),
          ),
        )
      ],
    );
  }
}
