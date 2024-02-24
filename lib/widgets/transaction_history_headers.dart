import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class TransactionHistoryHeaders extends StatelessWidget {
  const TransactionHistoryHeaders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Transaction History',
          style: AppStyles.styleSemiBold20(context),
        ),
        Text(
          'See all',
          style: AppStyles.styleMedium16(context).copyWith(
            color: const Color(0xff4EB7F2),
          ),
        ),
      ],
    );
  }
}
