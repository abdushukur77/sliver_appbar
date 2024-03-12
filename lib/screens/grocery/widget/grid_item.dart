import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/colors/app_colors.dart';
import '../../../utils/styles/app_text_style.dart';

class ProductWidget extends StatefulWidget {
  const ProductWidget({super.key, required this.title, required this.image, required this.price, required this.i});
  final String title;
  final String image;
  final String price;
  final int i;
  @override
  State<ProductWidget> createState() => _ProductWidgetState();
}

class _ProductWidgetState extends State<ProductWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal:8.w,vertical:8.h),
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.r),
          border: Border.all(width: 1.sp,color: Color(0xFFF0E9D2)),
          gradient: const LinearGradient(
              colors: [
                Color(0xFFF2F2F2),
                Color(0xFFFFFFFF),
                Color(0xFFF2F2F2),
              ]
          )
      ),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          
          Center(child: Image.asset(widget.image,width: 134.w,height: 120.h,fit: BoxFit.cover,)),
          SizedBox(height: 11.h,),
          SizedBox(
            width: double.infinity,
            child: Row(children: [
              Text(widget.title,style: AppTextStyle.interSemiBold.copyWith(
                color:AppColors.black,fontSize: 14.sp,
              ),),
              const Spacer(),
              RichText(text:TextSpan(
                  text: "Rp",
                  style: AppTextStyle.interRegular.copyWith(
                      color:AppColors.black,fontSize:10.sp
                  ),
                  children: [
                    TextSpan(
                        text:" ${widget.price}",
                        style: AppTextStyle.interSemiBold.copyWith(
                            color: AppColors.black,fontSize: 14.sp
                        )
                    )
                  ]
              ))
            ],),
          )
        ],),
    );
  }
}
