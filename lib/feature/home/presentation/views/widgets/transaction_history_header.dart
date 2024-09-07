import 'package:flutter/material.dart';

import '../../../../../core/utils/app_styles.dart';

class TransactionHistoryHeader extends StatelessWidget {
  const TransactionHistoryHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "TransactionHistory",
          style: AppStyles.styleSemiBold20(context),
        ),
        const Spacer(),
        Text(
          "See All",
          style: AppStyles.styleRegular16(context),
        ),

      ],
    );
  }
}
