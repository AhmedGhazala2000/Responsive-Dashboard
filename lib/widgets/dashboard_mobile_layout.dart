import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:responsive_dash_board/widgets/my_card_and_income_section.dart';

class DashboardMobileLayout extends StatelessWidget {
  const DashboardMobileLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          AllExpensesAndQuickInvoiceSection(),
          MyCardAndIncomeSection(),
        ],
      ),
    );
  }
}
