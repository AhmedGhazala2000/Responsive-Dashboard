import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/size_config.dart';

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout({
    Key? key,
    required this.mobileLayout,
    required this.tabletLayout,
    required this.desktopLayout,
  }) : super(key: key);
  final WidgetBuilder mobileLayout, tabletLayout, desktopLayout;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < SizeConfig.tablet) {
          return mobileLayout(context);
        } else if (constraints.maxWidth < SizeConfig.desktop) {
          return tabletLayout(context);
        } else {
          return desktopLayout(context);
        }
      },
    );
  }
}
