import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/size_config.dart';
import 'package:responsive_dash_board/widgets/adaptive_layout.dart';
import 'package:responsive_dash_board/widgets/dashboard_desktop_layout.dart';
import 'package:responsive_dash_board/widgets/dashboard_mobile_layout.dart';
import 'package:responsive_dash_board/widgets/dashboard_tablet_layout.dart';
import 'package:responsive_dash_board/widgets/my_drawer.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      appBar: width < SizeConfig.tablet
          ? AppBar(
              backgroundColor: Colors.black12,
            )
          : null,
      drawer: width < SizeConfig.tablet
          ? SizedBox(width: width * 0.7, child: const MyDrawer())
          : null,
      backgroundColor: const Color(0xffF7F9FA),
      body: AdaptiveLayout(
        mobileLayout: (BuildContext context) => const DashboardMobileLayout(),
        tabletLayout: (BuildContext context) => const DashboardTabletLayout(),
        desktopLayout: (BuildContext context) => const DashboardDesktopLayout(),
      ),
    );
  }
}
