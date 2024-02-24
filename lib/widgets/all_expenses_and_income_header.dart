import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class AllExpensesAndIncomeHeader extends StatelessWidget {
  const AllExpensesAndIncomeHeader({Key? key, required this.title})
      : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: AppStyles.styleSemiBold20(context),
        ),
        Container(
          padding: const EdgeInsets.all(12),
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
              side: const BorderSide(
                color: Color(0xffF1F1F1),
              ),
            ),
          ),
          child: Row(
            children: [
              Text(
                'Monthly',
                style: AppStyles.styleMedium16(context),
              ),
              const SizedBox(
                width: 18,
              ),
              Transform.rotate(
                angle: -1.57079633,
                child: const Icon(
                  Icons.arrow_back_ios_new,
                  size: 16,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
