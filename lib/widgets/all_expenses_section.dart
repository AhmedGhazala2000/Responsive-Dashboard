import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expenses_and_income_header.dart';
import 'package:responsive_dash_board/widgets/all_expenses_item_list_view.dart';
import 'package:responsive_dash_board/widgets/custom_container.dart';

class AllExpensesSection extends StatelessWidget {
  const AllExpensesSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
      child: Column(
        children: [
          AllExpensesAndIncomeHeader(
            title: 'All Expenses',
          ),
          SizedBox(
            height: 16,
          ),
          AllExpensesItemListView(),
        ],
      ),
    );
  }
}
