import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/transaction_history_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class TransactionHistoryItem extends StatelessWidget {
  const TransactionHistoryItem({Key? key, required this.transactionModel})
      : super(key: key);
  final TransactionHistoryModel transactionModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xffFAFAFA),
      child: ListTile(
        title: Text(
          transactionModel.title,
          style: AppStyles.styleSemiBold16(context),
        ),
        subtitle: Text(
          transactionModel.subTitle,
          style: AppStyles.styleRegular16(context)
              .copyWith(color: const Color(0xffAAAAAA)),
        ),
        trailing: Text(
          transactionModel.price,
          style: AppStyles.styleSemiBold20(context).copyWith(
            color: transactionModel.color ?? const Color(0xff7DD97B),
          ),
        ),
      ),
    );
  }
}
