import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/size_config.dart';

import 'details_income_cart.dart';
import 'income_cart.dart';
import 'income_details.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return width < 1600 && width >= SizeConfig.desktop+65
        ? const Expanded(
          child: Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: DetailsIncomeChart(),
            ),
          ),
        )
        : const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(flex: 1, child: IncomeCart()),
              Expanded(flex: 2, child: IncomeDetails())
            ],
          );
  }
}
