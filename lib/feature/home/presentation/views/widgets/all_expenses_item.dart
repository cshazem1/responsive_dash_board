import 'package:flutter/material.dart';

import '../../../../../core/utils/app_images.dart';
import 'all_expenses_item_header.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      decoration: ShapeDecoration(shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: const BorderSide(color: Color(0xfff1f1f1), width: 1)),
      ),
      child:const Row(
        children: [
          Expanded(child: AllExpensesItemHeader(image: Assets.imagesBalance,)),
          Expanded(child: AllExpensesItemHeader(image: Assets.imagesIncome,)),
          Expanded(child: AllExpensesItemHeader(image: Assets.imagesExpenses,)),

        ],
      ) ,

    );
  }
}
