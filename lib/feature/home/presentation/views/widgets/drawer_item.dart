import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/core/models/drawer_item_model.dart';

import '../../../../../core/utils/app_styles.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({super.key,required this.drawerItemModel});
final DrawerItemModel drawerItemModel;
  @override
  Widget build(BuildContext context) {
    return  ListTile(
      title: Text(drawerItemModel.title,style: AppStyles.styleMedium16(context),),
      leading: SvgPicture.asset(drawerItemModel.image),
    );
  }
}
