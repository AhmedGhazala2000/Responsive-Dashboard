import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expenses_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/all_expenses_item.dart';

class AllExpensesItemListView extends StatefulWidget {
  const AllExpensesItemListView({Key? key}) : super(key: key);

  @override
  State<AllExpensesItemListView> createState() =>
      _AllExpensesItemListViewState();
}

class _AllExpensesItemListViewState extends State<AllExpensesItemListView> {
  final List<AllExpensesItemModel> items = const [
    AllExpensesItemModel(
        image: Assets.imagesBalance,
        title: 'Balance',
        date: 'April 2022',
        price: r'$20,129'),
    AllExpensesItemModel(
        image: Assets.imagesIncome,
        title: 'Income',
        date: 'April 2022',
        price: r'$20,129'),
    AllExpensesItemModel(
        image: Assets.imagesExpenses,
        title: 'Expenses',
        date: 'April 2022',
        price: r'$20,129'),
  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
        child: GestureDetector(
            onTap: () {
              currentIndex = 0;
              setState(() {});
            },
            child: AllExpensesItem(
              itemModel: items[0],
              isSelected: currentIndex == 0,
            )),
      ),
      const SizedBox(
        width: 12,
      ),
      Expanded(
        child: GestureDetector(
            onTap: () {
              currentIndex = 1;
              setState(() {});
            },
            child: AllExpensesItem(
              itemModel: items[1],
              isSelected: currentIndex == 1,
            )),
      ),
      const SizedBox(
        width: 12,
      ),
      Expanded(
        child: GestureDetector(
            onTap: () {
              currentIndex = 2;
              setState(() {});
            },
            child: AllExpensesItem(
              itemModel: items[2],
              isSelected: currentIndex == 2,
            )),
      ),
    ]);
  }
}
