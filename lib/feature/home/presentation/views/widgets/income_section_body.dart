import 'package:flutter/material.dart';

import 'income_cart.dart';
import 'income_details.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  const Row(
      mainAxisAlignment:MainAxisAlignment.center,

      children: [
        Expanded(
            flex: 1,
            child: IncomeCart()),
        Expanded(
            flex: 2,
            child: IncomeDetails())

      ],
    );
  }
}
