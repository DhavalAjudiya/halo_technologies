import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SizeboxButoon extends StatelessWidget {
  final VoidCallback? onPressed;
  final Widget? child;
  final Color? color;

  SizeboxButoon({
    this.onPressed,
    this.child,
    this.color,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 5.h,
      width: double.infinity,
      child: GestureDetector(
        onTap: onPressed,
        child: child,
      ),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.white,
        ),
      ),
    );
  }
}
