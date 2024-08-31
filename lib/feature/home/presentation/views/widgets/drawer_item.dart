import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/core/models/drawer_item_model.dart';

import '../../../../../core/utils/app_styles.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem(
      {super.key, required this.drawerItemModel, required this.active,required this.onClick});
  final DrawerItemModel drawerItemModel;
  final bool active;
 final void Function()? onClick;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: ListTile(
        title: Text(
          drawerItemModel.title,
          style: active
              ? AppStyles.styleBold16(context)
                  .copyWith(color: const Color(0xff4EB7F2))
              : AppStyles.styleMedium16(context),
        ),
        leading: SvgPicture.asset(drawerItemModel.image),
      ),
    );
  }
}
