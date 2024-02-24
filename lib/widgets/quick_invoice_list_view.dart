import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/user_info_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/user_info.dart';

class QuickInvoiceListView extends StatelessWidget {
  const QuickInvoiceListView({Key? key}) : super(key: key);

  static const List<UserInfoModel> items = [
    UserInfoModel(
      title: 'Madrani Andi',
      subTitle: 'Madraniadi20@gmail',
      image: Assets.imagesAvatar2,
    ),
    UserInfoModel(
      title: 'Josua Nunito',
      subTitle: 'JoshNunito@gmail.com',
      image: Assets.imagesAvatar3,
    ),
    UserInfoModel(
      title: 'Madrani Andi',
      subTitle: 'Madraniadi20@gmail',
      image: Assets.imagesAvatar2,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Latest Transaction',
          style: AppStyles.styleMedium16(context),
        ),
        const SizedBox(
          height: 12,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: items.map(
              (e) {
                return IntrinsicWidth(
                  child: UserInfo(userInfo: e),
                );
              },
            ).toList(),
          ),
        ),
      ],
    );
  }
}
