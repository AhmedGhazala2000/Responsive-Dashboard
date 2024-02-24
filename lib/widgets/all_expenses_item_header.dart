import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader(
      {Key? key, required this.image, required this.isSelected})
      : super(key: key);
  final String image;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: FittedBox(
            child: Container(
              width: 60,
              height: 60,
              decoration: ShapeDecoration(
                shape: const OvalBorder(),
                color: isSelected
                    ? Colors.white.withOpacity(.1)
                    : const Color(0xffFAFAFA),
              ),
              child: Center(
                child: SvgPicture.asset(
                  image,
                  colorFilter: isSelected
                      ? const ColorFilter.mode(
                          Colors.white,
                          BlendMode.srcIn,
                        )
                      : null,
                ),
              ),
            ),
          ),
        ),
        Icon(
          Icons.arrow_forward_ios,
          color: isSelected ? Colors.white : null,
        )
      ],
    );
  }
}
