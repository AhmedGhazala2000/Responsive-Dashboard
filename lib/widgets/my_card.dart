import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class MyCard extends StatelessWidget {
  const MyCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        padding: const EdgeInsets.only(top: 16, left: 16, right: 24),
        decoration: BoxDecoration(
          color: const Color(0xff4EB7F2),
          borderRadius: BorderRadius.circular(12),
          image: const DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(Assets.imagesCardBackground),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                'Name card',
                style: AppStyles.styleRegular16(context).copyWith(
                  color: Colors.white,
                ),
              ),
              subtitle: Text(
                'Syah Bandi',
                style: AppStyles.styleMedium20(context),
              ),
              trailing: SvgPicture.asset(Assets.imagesGallery),
            ),
            const Spacer(),
            Text(
              '0918 8124 0042 8129',
              style: AppStyles.styleSemiBold24(context).copyWith(
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Text(
              '12/20 - 124',
              style: AppStyles.styleRegular16(context).copyWith(
                color: Colors.white,
              ),
            ),
            const Flexible(
                child: SizedBox(
              height: 24,
            ))
          ],
        ),
      ),
    );
  }
}
