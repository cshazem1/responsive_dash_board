import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/models/drawer_item_model.dart';

import 'active&inactive_item.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem(
      {super.key,
      required this.drawerItemModel,
      required this.active,
      required this.onClick});
  final DrawerItemModel drawerItemModel;
  final bool active;
  final void Function()? onClick;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,

      child:
      AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: active?EdgeInsets.symmetric(horizontal: 5):null,
        height: active ? 32.0 : 30.0,
        curve: Curves.elasticInOut,
        child:   active
            ? ActiveDrawerItem(drawerItemModel: drawerItemModel)
            : InActiveDrawerItem(drawerItemModel: drawerItemModel),
      ),


    );
  }
}


