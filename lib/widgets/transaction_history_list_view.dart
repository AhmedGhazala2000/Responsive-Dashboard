import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/transaction_history_model.dart';
import 'package:responsive_dash_board/widgets/transaction_history_item.dart';

class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({Key? key}) : super(key: key);
  static const List<TransactionHistoryModel> items = [
    TransactionHistoryModel(
      title: 'Cash Withdrawal',
      subTitle: '13 Apr, 2022',
      price: r'$20,129',
      color: Color(0xffF3735E),
    ),
    TransactionHistoryModel(
      title: 'Landing Page project',
      subTitle: '13 Apr, 2022 at 3:30 PM',
      price: r'$2,000',
    ),
    TransactionHistoryModel(
      title: 'Juni Mobile App project',
      subTitle: '13 Apr, 2022 at 3:30 PM',
      price: r'$20,129',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: items.asMap().entries.map((e) {
        int index = e.key;
        var item = e.value;
        return Padding(
          padding: index == 1
              ? const EdgeInsets.symmetric(vertical: 4)
              : EdgeInsets.zero,
          child: TransactionHistoryItem(transactionModel: item),
        );
      }).toList(),
    );
  }
}
