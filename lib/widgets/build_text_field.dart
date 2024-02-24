import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class BuildTextField extends StatelessWidget {
  const BuildTextField({Key? key, @required this.hintText, this.prefixIcon})
      : super(key: key);
  final String? hintText;
  final Widget? prefixIcon;

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.grey,
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        filled: true,
        fillColor: const Color(0xffFAFAFA),
        hintText: hintText,
        hintStyle: AppStyles.styleRegular16(context)
            .copyWith(color: const Color(0xffAAAAAA)),
        border: buildOutlineInputBorder(),
        enabledBorder: buildOutlineInputBorder(),
        focusedBorder: buildOutlineInputBorder(),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
      borderSide: const BorderSide(color: Color(0xffFAFAFA)),
      borderRadius: BorderRadius.circular(12),
    );
  }
}
