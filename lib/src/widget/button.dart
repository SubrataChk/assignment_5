import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../app/app_colors.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  const CustomButton({Key? key, required this.onTap, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.w),
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 8.h,
          width: double.infinity,
          decoration: BoxDecoration(
              color: AppColor.btnColor,
              borderRadius: BorderRadius.circular(15)),
          alignment: Alignment.center,
          child: Text(
            title,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.sp,
                color: Colors.white),
          ),
        ),
      ),
    );
  }
}
