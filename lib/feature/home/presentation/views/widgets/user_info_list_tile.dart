import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/app_images.dart';
import '../../../../../core/utils/app_styles.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({
    required this.title,
    required this.image,
    required this.subTitle,
    super.key,
  });
  final String title, subTitle, image;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(Assets.imagesAvatar3),
      title: Text(
        title,
        style: AppStyles.styleSemiBold16(context),
      ),
      subtitle: Text(subTitle, style: AppStyles.styleRegular12(context)),
    );
  }
}
