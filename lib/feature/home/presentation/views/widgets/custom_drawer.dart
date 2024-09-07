import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/feature/home/data/models/user_info_model.dart';
import 'package:responsive_dash_board/feature/home/presentation/views/widgets/active&inactive_item.dart';
import 'package:responsive_dash_board/feature/home/presentation/views/widgets/custom_background_container.dart';
import 'package:responsive_dash_board/feature/home/presentation/views/widgets/user_info_list_tile.dart';

import '../../../../../core/utils/app_images.dart';
import '../../../data/models/drawer_item_model.dart';
import 'drawer_item_list_view.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});
  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(
              userInfoModel: UserInfoModel(title: "Lekan Okeowo", email: "demo@gmail.com", image: Assets.imagesAvatar1),
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
