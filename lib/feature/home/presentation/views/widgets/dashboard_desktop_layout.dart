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
          flex: 3,
          child: CustomScrollView( slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: EdgeInsets.only(top: 40.0),
                      child: AllExpensesAndQuickInvoiceSection(),
                    ),
                  ),
                  SizedBox(
                    width: 24,
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 40,
                        ),
                        MyCardSectionAndTransactionHistory(),
                        Expanded(
                            child: IncomeSection()),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ),
        SizedBox(
          width: 12,
        )
      ],
    );
  }
}
