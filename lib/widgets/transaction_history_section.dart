import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/transaction_history_headers.dart';
import 'package:responsive_dash_board/widgets/transaction_history_list_view.dart';

class TransactionHistorySection extends StatelessWidget {
  const TransactionHistorySection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TransactionHistoryHeaders(),
        const SizedBox(
          height: 20,
        ),
        Text(
          '13 April 2022',
          style: AppStyles.styleMedium16(context)
              .copyWith(color: const Color(0xffAAAAAA)),
        ),
        const SizedBox(
          height: 16,
        ),
        const TransactionHistoryListView()
      ],
    );
  }
}
