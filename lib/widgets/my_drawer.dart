import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/models/user_info_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/custom_container.dart';
import 'package:responsive_dash_board/widgets/drawer_item.dart';
import 'package:responsive_dash_board/widgets/drawer_items_list_view.dart';
import 'package:responsive_dash_board/widgets/user_info.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
      padding: EdgeInsets.all(20),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfo(
              userInfo: UserInfoModel(
                title: 'Lekan Okeowo',
                subTitle: 'demo@gmail.com',
                image: Assets.imagesAvatar1,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 12,
            ),
          ),
          DrawerItemsListView(),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 24,
            ),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Spacer(),
                DrawerItem(
                  drawerItem: DrawerItemModel(
                      image: Assets.imagesSettings, title: 'Setting system'),
                ),
                DrawerItem(
                  drawerItem: DrawerItemModel(
                      image: Assets.imagesLogout, title: 'Logout account'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
