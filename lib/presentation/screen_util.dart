import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ScreenUtilWidget extends StatelessWidget {
  const ScreenUtilWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "data",
            style: TextStyle(
              fontSize: 20.sp,
            ),
          ),
          Text(
            "data",
            style: TextStyle(
              fontSize: 20.r,
            ),
          ),
          Text(
            "data",
            style: TextStyle(
              fontSize: 20.w,
            ),
          ),
          Text(
            "data",
            style: TextStyle(
              fontSize: 20.h,
            ),
          ),
          const Text(
            "data",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          const Text(
            "data",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ],
      ),
    ));
  }
}
