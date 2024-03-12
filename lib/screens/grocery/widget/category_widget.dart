import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/colors/app_colors.dart';
import '../../../utils/images/app_images.dart';
import '../../../utils/styles/app_text_style.dart';

class CategoriesFoodView extends SliverPersistentHeaderDelegate {
  final VoidCallback onTap;

  CategoriesFoodView({
    required this.onTap,
  });

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    List<CategoryModel> list = [
      CategoryModel(image: AppImages.vegetables, title: 'Vegetables'),
      CategoryModel(image: AppImages.fruit, title: 'Fruit'),
      CategoryModel(image: AppImages.spice, title: 'Spice'),
      CategoryModel(image: AppImages.ingrident, title: 'Ingridients'),
      CategoryModel(image: AppImages.side, title: 'Side Dishes'),
    ];
    int active = 0;
    return Container(
      height: 100,
      color: AppColors.white,
      // margin:EdgeInsets.only(left: 24.w,right: 24.w),
      padding: EdgeInsets.only(top: 16.h, left: 24.w, right: 24.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ...List.generate(list.length, (index) {
            return Column(
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(16.r),
                    child: Image.asset(
                      list[index].image,
                      width: 55.w,
                      height: 55.h,
                      fit: BoxFit.cover,
                    )),
                Text(
                  list[index].title,
                  style: AppTextStyle.interRegular.copyWith(
                      color: AppColors.black.withOpacity(0.8), fontSize: 12.sp),
                )
              ],
            );
          })
        ],
      ),
    );
  }

  @override
  double get maxExtent => 100.0;

  @override
  double get minExtent => 100.0;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}

class CategoryModel {
  final String image;
  final String title;

  CategoryModel({
    required this.image,
    required this.title,
  });
}
