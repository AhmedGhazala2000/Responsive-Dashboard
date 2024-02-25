import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/models/user_info_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/drawer_item.dart';
import 'package:responsive_dash_board/widgets/drawer_items_list_view.dart';
import 'package:responsive_dash_board/widgets/logo.dart';
import 'package:responsive_dash_board/widgets/user_info.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox(
              height: 50,
            ),
          ),
          SliverToBoxAdapter(
            child: Logo(),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 10,
            ),
          ),
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
          SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 32),
              child: Column(
                children: [
                  Spacer(),
                  DrawerItem(
                    drawerItem: DrawerItemModel(
                        image: Assets.imagesSettings, title: 'Setting system'),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  DrawerItem(
                    drawerItem: DrawerItemModel(
                        image: Assets.imagesLogout, title: 'Logout account'),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
