import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {Key? key, required this.text, this.textColor, this.backColor})
      : super(key: key);
  final Color? textColor, backColor;
  final String text;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      height: 60,
      color: backColor,
      onPressed: () {},
      child: FittedBox(
        fit: BoxFit.scaleDown,
        alignment: Alignment.centerLeft,
        child: Text(
          text,
          style: AppStyles.styleSemiBold18(context).copyWith(color: textColor),
        ),
      ),
    );
  }
}
