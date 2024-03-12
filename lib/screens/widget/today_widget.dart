import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../utils/colors/app_colors.dart';
import '../../../utils/images/app_images.dart';
import '../../../utils/styles/app_text_style.dart';

class TodayWidget extends StatelessWidget {
  const TodayWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
            height: 54.h,
            width: 54.w,
            decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(16.r)),
            margin: EdgeInsets.symmetric(horizontal: 13),
            child: Image.asset(AppImages.behance)),

        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Behance Project",
              style: AppTextStyle.interBold
                  .copyWith(fontSize: 18.sp, color: AppColors.black),
            ),
            Text(
              "23rd march 2021",
              style: AppTextStyle.interLight
                  .copyWith(fontSize: 12.sp, color: AppColors.black),
            ),
          ],),
        Spacer(),
        Text(
          "\$320",
          style: AppTextStyle.interBold
              .copyWith(fontSize: 18.sp, color: AppColors.black),
        ),
      ],
    );
  }
}
