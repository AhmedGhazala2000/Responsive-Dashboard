import 'package:flutter/cupertino.dart';
import 'package:responsive_dash_board/widgets/income_section.dart';
import 'package:responsive_dash_board/widgets/my_card_and_transaction_history_section.dart';

class MyCardAndIncomeSection extends StatelessWidget {
  const MyCardAndIncomeSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 40,
        ),
        MyCardAndTransactionHistorySection(),
        SizedBox(
          height: 24,
        ),
        IncomeSection()
      ],
    );
  }
}
