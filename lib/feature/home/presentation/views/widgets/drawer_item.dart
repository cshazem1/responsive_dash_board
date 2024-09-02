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
    return IntrinsicHeight(
      child: GestureDetector(
        onTap: onClick,
        child: AnimatedCrossFade(
          firstChild: ActiveDrawerItem(drawerItemModel: drawerItemModel),
          secondChild: InActiveDrawerItem(drawerItemModel: drawerItemModel),
          crossFadeState:
              active ? CrossFadeState.showFirst : CrossFadeState.showSecond,
          firstCurve: Curves.slowMiddle,
          duration: const Duration(milliseconds: 300),
        ),
      ),
    );
  }
}
