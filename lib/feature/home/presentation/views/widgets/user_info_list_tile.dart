import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/feature/home/data/models/user_info_model.dart';

import '../../../../../core/utils/app_styles.dart';

class UserInfoListTile extends StatelessWidget {
  final UserInfoModel userInfoModel;
  const UserInfoListTile({
    required this.userInfoModel,
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xffFAFAFA),
      elevation: 0,
      child: ListTile(
        leading: SvgPicture.asset(
          userInfoModel.image,
          height: getResponsiveFontSize(context, fontSize: 45),
        ),
        title: Text(
          userInfoModel.title,
          style: AppStyles.styleSemiBold16(context),
        ),
        subtitle:
            Text(userInfoModel.email, style: AppStyles.styleRegular12(context)),
      ),
    );
  }
}
