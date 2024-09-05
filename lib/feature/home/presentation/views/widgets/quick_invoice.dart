import 'package:flutter/material.dart';
import 'package:responsive_dash_board/feature/home/presentation/views/widgets/custom_background_container.dart';
import 'package:responsive_dash_board/feature/home/presentation/views/widgets/latest_transaction_section.dart';
import 'package:responsive_dash_board/feature/home/presentation/views/widgets/quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(child: Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuickInvoiceHeader(),
         SizedBox(height: 16,),
        LatestTransactionSection()
      ],
    ));
  }
}
