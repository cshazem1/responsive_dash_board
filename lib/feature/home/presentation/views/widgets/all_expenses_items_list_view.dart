import 'package:flutter/material.dart';
import 'package:responsive_dash_board/feature/home/presentation/views/widgets/all_expenses_item.dart';

import '../../../../../core/utils/app_images.dart';
import '../../../data/models/all_expenses_item_model.dart';

class AllExpensesItemsListView extends StatefulWidget {
  const AllExpensesItemsListView({super.key});

  @override
  State<AllExpensesItemsListView> createState() =>
      _AllExpensesItemsListViewState();
}

class _AllExpensesItemsListViewState extends State<AllExpensesItemsListView> {
  int indexSelected = 0;

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
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
        child: AllExpensesItem(
            onSelected: () {
              setState(() {
                indexSelected = 0;
              });
            },
            isActive: 0 == indexSelected ? true : false,
            itemModel: allExpensesItemsList[0]),
      ),
      const SizedBox(
        width: 8,
      ),
      Expanded(
        child: AllExpensesItem(
            onSelected: () {
              setState(() {
                indexSelected = 1;
              });
            },
            isActive: 1 == indexSelected ? true : false,
            itemModel: allExpensesItemsList[1]),
      ),
      SizedBox(
        width: 8,
      ),
      Expanded(
        child: AllExpensesItem(
            onSelected: () {
              setState(() {
                indexSelected = 2;
              });
            },
            isActive: 2 == indexSelected ? true : false,
            itemModel: allExpensesItemsList[2]),
      ),
    ]

        // AllExpensesItemsListView.allExpensesItemsList
        //     .asMap()
        //     .entries
        //     .map((e) => Expanded(
        //           child: Padding(
        //             padding: e.key == 1
        //                 ? const EdgeInsets.symmetric(horizontal: 10.0)
        //                 : EdgeInsets.zero,
        //             child: AllExpensesItem(
        //               onSelected: () {
        //
        //                 setState(() {
        //                   indexSelected = e.key;
        //                 });
        //               },
        //               itemModel: e.value,
        //               isActive: e.key == indexSelected ? true : false,
        //             ),
        //           ),
        //         ))
        //     .toList(),
        );
  }
}
