import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/models/user_info_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({Key? key, required this.userInfo}) : super(key: key);
  final UserInfoModel userInfo;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xffFAFAFA),
      child: Center(
        child: ListTile(
          contentPadding: const EdgeInsets.symmetric(horizontal: 10),
          leading: SvgPicture.asset(userInfo.image),
          title: FittedBox(
            fit: BoxFit.scaleDown,
            alignment: Alignment.centerLeft,
            child: Text(
              userInfo.title,
              style: AppStyles.styleSemiBold16(context),
            ),
          ),
          subtitle: FittedBox(
            fit: BoxFit.scaleDown,
            alignment: Alignment.centerLeft,
            child: Text(
              userInfo.subTitle,
              style: AppStyles.styleRegular12(context),
            ),
          ),
        ),
      ),
    );
  }
}
