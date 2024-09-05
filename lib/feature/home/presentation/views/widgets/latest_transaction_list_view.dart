import 'package:flutter/cupertino.dart';
import 'package:responsive_dash_board/feature/home/presentation/views/widgets/user_info_list_tile.dart';

import '../../../../../core/utils/app_images.dart';
import '../../../data/models/user_info_model.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({
    super.key,
  });
  static const List<UserInfoModel> userInfoList = [
    UserInfoModel(
        title: "Madrani Andi",
        image: Assets.imagesAvatar1,
        email: "Madraniadi20@gmail"),
    UserInfoModel(
        title: "Madrani Andi",
        image: Assets.imagesAvatar2,
        email: "Madraniadi20@gmail"),
    UserInfoModel(
        title: "Madrani Andi",
        image: Assets.imagesAvatar3,
        email: "Madraniadi20@gmail"),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: userInfoList
            .asMap()
            .entries
            .map((e) => IntrinsicWidth(
                    child: UserInfoListTile(
                  userInfoModel: e.value,
                )))
            .toList(),
      ),
    );
    ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: userInfoList.length,
        itemBuilder: (context, index) {
          return IntrinsicWidth(
            child: UserInfoListTile(
              userInfoModel: userInfoList[index],
            ),
          );
        });
  }
}
