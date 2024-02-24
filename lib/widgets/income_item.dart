import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/income_item_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class IncomeItem extends StatelessWidget {
  const IncomeItem({Key? key, required this.itemModel}) : super(key: key);
  final IncomeItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Container(
        width: 12,
        height: 12,
        decoration: ShapeDecoration(
          color: itemModel.color,
          shape: const OvalBorder(),
        ),
      ),
      title: FittedBox(
        fit: BoxFit.scaleDown,
        alignment: Alignment.centerLeft,
        child: Text(
          itemModel.title,
          style: AppStyles.styleRegular16(context)
              .copyWith(color: const Color(0xff064061)),
        ),
      ),
      trailing: Text(
        itemModel.percentage,
        style: AppStyles.styleMedium16(context)
            .copyWith(color: const Color(0xff208CC8)),
      ),
    );
  }
}
