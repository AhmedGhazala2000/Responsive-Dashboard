import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/income_item_model.dart';
import 'package:responsive_dash_board/widgets/income_item.dart';

class IncomeItemsListView extends StatelessWidget {
  const IncomeItemsListView({Key? key}) : super(key: key);
  static const List<IncomeItemModel> items = [
    IncomeItemModel(
        color: Color(0xff208CC8), title: 'Design service', percentage: '40%'),
    IncomeItemModel(
        color: Color(0xff4EB7F2), title: 'Design product', percentage: '25%'),
    IncomeItemModel(
        color: Color(0xff064061), title: 'Product royalti', percentage: '20%'),
    IncomeItemModel(
        color: Color(0xffE2DECD), title: 'Other', percentage: '22%'),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: items
          .map(
            (e) => IncomeItem(itemModel: e),
          )
          .toList(),
    );
  }
}
