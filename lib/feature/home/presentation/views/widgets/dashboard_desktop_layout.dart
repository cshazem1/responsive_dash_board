import 'package:flutter/material.dart';
import 'package:responsive_dash_board/feature/home/presentation/views/widgets/all_expenses.dart';
import 'package:responsive_dash_board/feature/home/presentation/views/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/feature/home/presentation/views/widgets/quick_invoice.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomDrawer(),
        ),
        SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 2,
          child: Column(
            children: [
              Center(child: AllExpenses()),
              SizedBox(height: 24,),
              Expanded(child: QuickInvoice())

            ],
          ),
        ),
      ],
    );
  }
}
