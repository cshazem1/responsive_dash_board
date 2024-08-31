import 'package:flutter/material.dart';
import 'package:responsive_dash_board/feature/home/presentation/views/widgets/user_info_list_tile.dart';

import '../../../../../core/utils/app_images.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

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
        )
      ],
    );
  }
}
