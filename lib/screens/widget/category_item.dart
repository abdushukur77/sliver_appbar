

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sliver_appbar/utils/styles/app_text_style.dart';

class Category extends StatelessWidget {
  const Category({super.key, required this.text, required this.color, required this.fcolor});

  final String text;
  final Color color;
  final Color fcolor;

  @override
  Widget build(BuildContext context) {
    return
      TextButton(onPressed: (){}, child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Container(
          height: 10.h,
          width: 10.w,
          decoration: BoxDecoration(
            color: Colors.black,
            shape: BoxShape.circle,
          ),),
        SizedBox(width:10.w),
        Text(text, style: AppTextStyle.interSemiBold.copyWith(
          fontSize: 12.sp,
          color: fcolor
        ),),

      ],),
        style: TextButton.styleFrom(

          padding: EdgeInsets.symmetric(horizontal: 21.w,),
          backgroundColor: color,
        ),
      );
  }
}
