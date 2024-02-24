import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/my_card.dart';

class MyCardPageView extends StatelessWidget {
  const MyCardPageView({Key? key, this.controller}) : super(key: key);
  final PageController? controller;

  @override
  Widget build(BuildContext context) {
    return ExpandablePageView.builder(
      controller: controller,
      scrollDirection: Axis.horizontal,
      itemCount: 3,
      itemBuilder: (context, index) {
        return const MyCard();
      },
    );
  }
}
