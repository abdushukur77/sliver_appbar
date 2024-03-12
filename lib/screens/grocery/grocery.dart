import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sliver_appbar/screens/grocery/widget/category_widget.dart';
import 'package:sliver_appbar/screens/grocery/widget/grid_item.dart';
import 'package:sliver_appbar/utils/colors/app_colors.dart';
import 'package:sliver_appbar/utils/images/app_images.dart';
import 'package:sliver_appbar/utils/styles/app_text_style.dart';

class GroceryScreen extends StatefulWidget {
  const GroceryScreen({super.key});

  @override
  State<GroceryScreen> createState() => _GroceryScreenState();
}

class _GroceryScreenState extends State<GroceryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            automaticallyImplyLeading: false,
            pinned: true,
            expandedHeight: 300.h,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    SizedBox(height: 70.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              text: TextSpan(
                                text: 'Hello, ',
                                style: AppTextStyle.interLight
                                    .copyWith(fontSize: 20.sp),
                                children: const <TextSpan>[
                                  TextSpan(
                                      text: 'Fahmi',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.orange)),
                                ],
                              ),
                            ),
                            Text(
                              "Find The Right One For",
                              style: AppTextStyle.interBold
                                  .copyWith(fontSize: 22.sp),
                            ),
                            Text("A Healthy Body",
                                style: AppTextStyle.interBold
                                    .copyWith(fontSize: 22.sp))
                          ],
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.notifications,
                          ),
                          style: IconButton.styleFrom(
                              backgroundColor: Colors.orangeAccent,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12.r))),
                        ),
                      ],
                    ),
                    SizedBox(height: 20.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                                prefixIcon: Icon(Icons.search),
                                hintText: "Search",
                                disabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: AppColors.white.withOpacity(.1)),
                                    borderRadius: BorderRadius.circular(20)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20))),
                          ),
                        ),
                        SizedBox(
                          width: 20.w,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.filter_frames_sharp,
                          ),
                          style: IconButton.styleFrom(
                              backgroundColor: Colors.orangeAccent,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12.r))),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Category",
                            style: AppTextStyle.interBold
                                .copyWith(fontSize: 22.sp)),
                        Text("Show All",
                            style: AppTextStyle.interThin
                                .copyWith(fontSize: 16.sp)),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          SliverPersistentHeader(
              pinned: true, delegate: CategoriesFoodView(onTap: () {})),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Best Deal",
                      style: AppTextStyle.interBold.copyWith(fontSize: 22.sp)),
                  SizedBox(
                    height: 250.h,
                    child: ListView(
                      padding: EdgeInsets.all(24.r),
                      scrollDirection: Axis.horizontal,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.w),
                          child: Container(
                            child: Stack(
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(13.w),
                                  child: Image.asset(AppImages.deal_widget),
                                ),
                                Positioned(
                                  top: 20,
                                  left: 20,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("#SimpleKitchen",
                                          style: AppTextStyle.interThin
                                              .copyWith(
                                                  fontSize: 16.sp,
                                                  color: AppColors.white)),
                                      SizedBox(
                                        height: 27.h,
                                      ),
                                      SizedBox(
                                        width: 110.w,
                                        child: Text("Soup Package",
                                            style: AppTextStyle.interBold
                                                .copyWith(
                                                    fontSize: 24.sp,
                                                    color: AppColors.white)),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      SizedBox(
                                        width: 170.w,
                                        child: Text(
                                            "#No need to think about ingredients anymore, let's find your menu today",
                                            style: AppTextStyle.interBold
                                                .copyWith(
                                                    fontSize: 6.sp,
                                                    color: AppColors.white)),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.w),
                          child: Container(
                            child: Stack(
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(13.w),
                                  child: Image.asset(AppImages.deal_widget),
                                ),
                                Positioned(
                                  top: 20,
                                  left: 20,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("#SimpleKitchen",
                                          style: AppTextStyle.interThin
                                              .copyWith(
                                                  fontSize: 16.sp,
                                                  color: AppColors.white)),
                                      SizedBox(
                                        height: 27.h,
                                      ),
                                      SizedBox(
                                        width: 110.w,
                                        child: Text("Soup Package",
                                            style: AppTextStyle.interBold
                                                .copyWith(
                                                    fontSize: 24.sp,
                                                    color: AppColors.white)),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      SizedBox(
                                        width: 170.w,
                                        child: Text(
                                            "#No need to think about ingredients anymore, let's find your menu today",
                                            style: AppTextStyle.interBold
                                                .copyWith(
                                                    fontSize: 6.sp,
                                                    color: AppColors.white)),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Best Price",
                          style:
                              AppTextStyle.interBold.copyWith(fontSize: 22.sp)),
                      Text("Show All",
                          style:
                              AppTextStyle.interThin.copyWith(fontSize: 16.sp)),
                    ],
                  )
                ],
              ),
            ),
          ),
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200.0,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
              childAspectRatio: 0.8,
            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return ProductWidget(
                    title: "Tempe",
                    image: AppImages.side,
                    price: "20000",
                    i: 1);
              },
              childCount: 20,
            ),
          ),
        ],
      ),
    );
  }
}
