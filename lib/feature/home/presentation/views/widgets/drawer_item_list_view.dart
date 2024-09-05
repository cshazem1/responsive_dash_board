import 'package:flutter/material.dart';

import '../../../../../core/utils/app_images.dart';
import '../../../data/models/drawer_item_model.dart';
import 'drawer_item.dart';

class DrawerItemListView extends StatefulWidget {
  const DrawerItemListView({
    super.key,
  });

  @override
  State<DrawerItemListView> createState() => _DrawerItemListViewState();
}

class _DrawerItemListViewState extends State<DrawerItemListView> {
  final List<DrawerItemModel> items = [
    const DrawerItemModel(image: Assets.imagesDashboard, title: "Dashboard"),
    const DrawerItemModel(
        image: Assets.imagesMyTransctions, title: "My Transaction"),
    const DrawerItemModel(
        image: Assets.imagesStatistics, title: "My Statistics"),
    const DrawerItemModel(
        image: Assets.imagesWalletAccount, title: "Wallet Account"),
    const DrawerItemModel(
        image: Assets.imagesMyInvestments, title: "My Investments"),
  ];
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(

      itemCount: items.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: DrawerItem(
            drawerItemModel: items[index],
            active: index == activeIndex,
            onClick: () {
              if (activeIndex != index) {
                setState(() {
                  activeIndex = index;
                });
              }
            },
          ),
        );
      },
    );
  }
}
