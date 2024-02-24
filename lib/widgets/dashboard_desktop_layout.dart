import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:responsive_dash_board/widgets/my_drawer.dart';
import 'package:responsive_dash_board/widgets/my_card_and_income_section.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: MyDrawer()),
        SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 5,
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                        flex: 3,
                        child: Padding(
                          padding: EdgeInsets.only(top: 40),
                          child: AllExpensesAndQuickInvoiceSection(),
                        )),
                    SizedBox(
                      width: 24,
                    ),
                    Expanded(flex: 2, child: MyCardAndIncomeSection()),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
