import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Quick Invoice',
          style: AppStyles.styleSemiBold20(context),
        ),
        Flexible(
          child: Container(
            width: 48,
            height: 48,
            decoration: const ShapeDecoration(
              shape: OvalBorder(),
              color: Color(0xffFAFAFA),
            ),
            child: const Center(
              child: Icon(
                Icons.add,
                color: Color(0xff4EB7F2),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
