import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:responsive_dash_board/widgets/my_card_and_income_section.dart';
import 'package:responsive_dash_board/widgets/my_drawer.dart';

class DashboardTabletLayout extends StatelessWidget {
  const DashboardTabletLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: MyDrawer()),
        Expanded(
          flex: 3,
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 32, vertical: 40),
            child: Column(
              children: [
                AllExpensesAndQuickInvoiceSection(),
                MyCardAndIncomeSection(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
