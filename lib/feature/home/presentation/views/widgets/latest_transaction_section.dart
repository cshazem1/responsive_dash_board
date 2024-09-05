import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/app_styles.dart';

import 'custom_text_field.dart';
import 'latest_transaction_list_view.dart';

class LatestTransactionSection extends StatelessWidget {
  const LatestTransactionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Latest Transactions",
          style: AppStyles.styleMedium16(context),
        ),
        const SizedBox(
          height: 9,
        ),
        const LatestTransactionListView(),
      ],
    );
  }
}
