import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/utils/app_images.dart';

class Logo extends StatelessWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 193 / 53,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        color: const Color(0xffC4C4C4),
        child: SvgPicture.asset(
          Assets.imagesGallery,
          fit: BoxFit.scaleDown,
        ),
      ),
    );
  }
}
