import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/models/drawer_item_model.dart';
import 'package:responsive_dash_board/feature/home/presentation/views/widgets/active&inactive_item.dart';
import 'package:responsive_dash_board/feature/home/presentation/views/widgets/user_info_list_tile.dart';

import '../../../../../core/utils/app_images.dart';
import 'drawer_item_list_view.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Card(
              color: Color(0xffFAFAFA),
              elevation: 0,
              child: UserInfoListTile(
                title: "Lekan Okeowo",
                image: Assets.imagesAvatar3,
                subTitle: "demo@gmail.com",
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 8,
            ),
          ),
          DrawerItemListView(),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 20,
            ),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(child: SizedBox()),
                InActiveDrawerItem(
                    drawerItemModel: DrawerItemModel(
                        title: "Setting system", image: Assets.imagesSettings)),
                InActiveDrawerItem(
                    drawerItemModel: DrawerItemModel(
                        title: "Logout account", image: Assets.imagesLogout)),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 48,
            ),
          ),
        ],
      ),
    );
  }
}
