

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sliver_appbar/utils/colors/app_colors.dart';

import '../../../utils/styles/app_text_style.dart';


class ContainerView extends StatelessWidget {
  const ContainerView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
          color:AppColors.white,
              borderRadius: BorderRadius.circular(16.r)

      ),
      margin:
      EdgeInsets.symmetric(horizontal: 13),
      padding: EdgeInsets.symmetric(horizontal: 19.w,vertical:17.h ),
      child: Column(
        children: [
          Text("€",
            style: AppTextStyle.interBold
                .copyWith(fontSize: 30, color: AppColors.c_5771F9),
          ),

          Text("585.00",
            style: AppTextStyle.interBold
                .copyWith(fontSize: 20, color: Colors.black),
          ),
          Text("EUR Balance",
            style: AppTextStyle.interBold
                .copyWith(fontSize: 16, color: Colors.black),
          ),

        ],
      ),
    );
  }
}
