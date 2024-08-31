import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/feature/home/presentation/views/widgets/user_info_list_tile.dart';

import '../../../../../core/models/drawer_item_model.dart';
import '../../../../../core/utils/app_images.dart';
import 'drawer_item_list_view.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});
  static const List<DrawerItemModel> items = [
    DrawerItemModel(image: Assets.imagesDashboard, title: "Dashboard"),
    DrawerItemModel(image: Assets.imagesMyTransctions, title: "My Transaction"),
    DrawerItemModel(image: Assets.imagesStatistics, title: "My Statistics"),
    DrawerItemModel(image: Assets.imagesWalletAccount, title: "Wallet Account"),
    DrawerItemModel(image: Assets.imagesMyInvestments, title: "My Investments"),
  ];
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Card(
          color: Color(0xffFAFAFA),
          elevation: 0,
          child: UserInfoListTile(
            title: "Lekan Okeowo",
            image: Assets.imagesAvatar3,
            subTitle: "demo@gmail.com",
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Expanded(
          child: DrawerItemListView(items: items),
        ),
      ],
    );
  }
}

