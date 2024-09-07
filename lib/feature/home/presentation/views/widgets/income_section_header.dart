import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/app_styles.dart';

class IncomeSectionHeader extends StatelessWidget {
  const IncomeSectionHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Income",
          style: AppStyles.styleSemiBold20(context),
        ),
        Row(
          children: [
            Text(
              "Monthly",
              style: AppStyles.styleRegular16(context),
            ),
            const SizedBox(
              width: 8,
            ),
            const Icon(
              CupertinoIcons.chevron_down,
              color: Color(0xff4EB7F2),
              size: 16,
            ),
          ],
        ),
      ],
    );
  }
}
