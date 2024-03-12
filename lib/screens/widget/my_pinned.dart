import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sliver_appbar/utils/colors/app_colors.dart';

import 'category_item.dart';
import 'container_view.dart';

class Categories extends SliverPersistentHeaderDelegate {
  const Categories();

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    // TODO: implement build
    return Container(

      height: 150.h,color: Colors.white,
    child:SizedBox(
      height: 150,
      child: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 10.h),
        scrollDirection: Axis.horizontal,
        children: const [
        Category(text: "Payments | \$398",color: AppColors.c_7A7AFD, fcolor: AppColors.white,),
        Category(text: "Food",color: AppColors.white, fcolor: AppColors.grey,),
        Category(text: "Services",color: AppColors.white, fcolor: AppColors.grey,),
        Category(text: "Rent",color: AppColors.white, fcolor: AppColors.grey,)

        ],
      ),
    ),
    );
  }

  @override
  // TODO: implement maxExtent
  double get maxExtent => 60.h;

  @override
  // TODO: implement minExtent
  double get minExtent => 60.h;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    // TODO: implement shouldRebuild
   return true;
  }


}
