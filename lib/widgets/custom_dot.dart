import 'package:flutter/material.dart';

class CustomDot extends StatelessWidget {
  const CustomDot({Key? key, required this.isActive}) : super(key: key);
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: isActive ? 32 : 8,
      height: 8,
      decoration: BoxDecoration(
        color: isActive ? const Color(0xff4EB7F2) : const Color(0xffE8E8E8),
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }
}
