import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expenses_and_income_header.dart';
import 'package:responsive_dash_board/widgets/custom_container.dart';
import 'package:responsive_dash_board/widgets/income_chart.dart';
import 'package:responsive_dash_board/widgets/income_items_list_view.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
      child: Column(
        children: [
          AllExpensesAndIncomeHeader(title: 'Income'),
          SizedBox(
            height: 16,
          ),
          Row(
            children: [
              Expanded(child: IncomeChart()),
              SizedBox(
                width: 40,
              ),
              Expanded(flex: 2, child: IncomeItemsListView())
            ],
          )
        ],
      ),
    );
  }
}
