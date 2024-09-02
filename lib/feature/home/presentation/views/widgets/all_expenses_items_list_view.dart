import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/models/all_expenses_item_model.dart';
import 'package:responsive_dash_board/feature/home/presentation/views/widgets/all_expenses_item.dart';

import '../../../../../core/utils/app_images.dart';

class AllExpensesItemsListView extends StatefulWidget {
  const AllExpensesItemsListView({super.key});
  static const List<AllExpensesItemModel> allExpensesItemsList = [
    AllExpensesItemModel(
        image: Assets.imagesBalance,
        title: "Balance",
        data: "April 2022",
        price: r"$20,129"),
    AllExpensesItemModel(
        image: Assets.imagesIncome,
        title: "Income",
        data: "April 2022",
        price: r"$20,129"),
    AllExpensesItemModel(
        image: Assets.imagesExpenses,
        title: "Expense",
        data: "April 2022",
        price: r"$20,129"),
  ];

  @override
  State<AllExpensesItemsListView> createState() =>
      _AllExpensesItemsListViewState();
}

class _AllExpensesItemsListViewState extends State<AllExpensesItemsListView> {
  int indexSelected = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: AllExpensesItemsListView.allExpensesItemsList
          .asMap()
          .entries
          .map((e) => Expanded(
                child: Padding(
                  padding: e.key == 1
                      ? const EdgeInsets.symmetric(horizontal: 10.0)
                      : EdgeInsets.zero,
                  child: AllExpensesItem(
                    onSelected: () {
                      indexSelected = e.key;
                      setState(() {});
                    },
                    itemModel: e.value,
                    isActive: e.key == indexSelected ? true : false,
                  ),
                ),
              ))
          .toList(),
    );
  }
}
