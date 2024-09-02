import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/models/all_expenses_item_model.dart';
import 'package:responsive_dash_board/feature/home/presentation/views/widgets/active&inactive_all__expensesItem.dart';


class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({required this.onSelected,
    required this.isActive,
    required this.itemModel,
    super.key,
  });
  final AllExpensesItemModel itemModel;
 final void Function() onSelected;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onSelected ,
      child: isActive
          ? ActiveAllExpensesItem(

              itemModel: itemModel,
            )
          : InActiveAllExpensesItem(itemModel: itemModel),
    );
  }
}


