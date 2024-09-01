import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/models/all_expenses_item_model.dart';

import 'all_expenses_item_header.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({
    required this.itemModel,
    super.key,
  });
  final AllExpensesItemModel itemModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: const BorderSide(color: Color(0xfff1f1f1), width: 1)),
      ),
      child: Column(
        children: [
          AllExpensesItemHeader(
                      image: itemModel.image,
                    ),

        ],
      ),
    );
  }
}
