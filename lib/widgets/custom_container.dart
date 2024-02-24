import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({Key? key, this.padding, this.child}) : super(key: key);
  final EdgeInsetsGeometry? padding;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ?? const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: child,
    );
  }
}
