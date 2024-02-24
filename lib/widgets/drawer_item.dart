import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem(
      {Key? key, required this.drawerItem, this.isSelected = false})
      : super(key: key);
  final DrawerItemModel drawerItem;
  final bool? isSelected;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: SvgPicture.asset(drawerItem.image),
      title: FittedBox(
        fit: BoxFit.scaleDown,
        alignment: Alignment.centerLeft,
        child: Text(
          drawerItem.title,
          style: isSelected!
              ? AppStyles.styleBold16(context)
              : AppStyles.styleRegular16(context),
        ),
      ),
      trailing: isSelected!
          ? Container(
              width: 3.27,
              color: const Color(0xff4EB7F2),
            )
          : null,
    );
  }
}
