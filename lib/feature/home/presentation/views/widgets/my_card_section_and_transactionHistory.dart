import 'package:flutter/material.dart';
import 'package:responsive_dash_board/feature/home/presentation/views/widgets/transaction_history.dart';

import 'custom_background_container.dart';
import 'my_card_sections.dart';

class MyCardSectionAndTransactionHistory extends StatelessWidget {
  const MyCardSectionAndTransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
        child: Column(
              children: [
        MyCardSections(),
        SizedBox(
          height: 16,
        ),
        Divider(),
        SizedBox(
          height: 16,
        ),
        TransactionHistory()
              ],
            ));
  }
}
