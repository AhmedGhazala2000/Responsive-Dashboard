import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_container.dart';
import 'package:responsive_dash_board/widgets/custom_form.dart';
import 'package:responsive_dash_board/widgets/quick_invoice_header.dart';
import 'package:responsive_dash_board/widgets/quick_invoice_list_view.dart';

class QuickInvoiceSection extends StatelessWidget {
  const QuickInvoiceSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
      padding: EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvoiceHeader(),
          SizedBox(
            height: 24,
          ),
          QuickInvoiceListView(),
          Divider(
            color: Color(0xffF1F1F1),
            height: 48,
          ),
          CustomForm(),
        ],
      ),
    );
  }
}
