import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_container.dart';
import 'package:responsive_dash_board/widgets/my_card_section.dart';
import 'package:responsive_dash_board/widgets/transaction_history_section.dart';

class MyCardAndTransactionHistorySection extends StatelessWidget {
  const MyCardAndTransactionHistorySection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
      padding: EdgeInsets.all(24),
      child: Column(
        children: [
          MyCardSection(),
          Divider(height: 40, color: Color(0xffF1F1F1)),
          TransactionHistorySection()
        ],
      ),
    );
  }
}
