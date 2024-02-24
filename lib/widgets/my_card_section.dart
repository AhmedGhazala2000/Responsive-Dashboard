import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/dots_indicator.dart';
import 'package:responsive_dash_board/widgets/my_card_page_view.dart';

class MyCardSection extends StatefulWidget {
  const MyCardSection({Key? key}) : super(key: key);

  @override
  State<MyCardSection> createState() => _MyCardSectionState();
}

class _MyCardSectionState extends State<MyCardSection> {
  int currentPageIndex = 0;
  late PageController pageController;

  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      currentPageIndex = pageController.page!.round();
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'My card',
          style: AppStyles.styleSemiBold20(context),
        ),
        const SizedBox(
          height: 20,
        ),
        MyCardPageView(controller: pageController),
        const SizedBox(
          height: 19,
        ),
        DotsIndicator(
          currentPageIndex: currentPageIndex,
        )
      ],
    );
  }
}
