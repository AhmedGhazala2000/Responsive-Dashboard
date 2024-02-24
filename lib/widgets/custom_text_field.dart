import 'package:flutter/cupertino.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/build_text_field.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {Key? key, required this.text, required this.hintText, this.prefixIcon})
      : super(key: key);
  final String text, hintText;
  final Widget? prefixIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: AppStyles.styleMedium16(context),
        ),
        const SizedBox(
          height: 12,
        ),
        BuildTextField(hintText: hintText, prefixIcon: prefixIcon),
      ],
    );
  }
}
