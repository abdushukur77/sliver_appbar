import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sliver_appbar/utils/colors/app_colors.dart';
import 'package:sliver_appbar/utils/styles/app_text_style.dart';

import '../widget/container_view.dart';
import '../widget/my_pinned.dart';
import '../widget/today_widget.dart';

class SliverScreen extends StatefulWidget {
  const SliverScreen({super.key});

  @override
  State<SliverScreen> createState() => _SliverScreenState();
}

class _SliverScreenState extends State<SliverScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          automaticallyImplyLeading: false,
          pinned: true,
          expandedHeight: 431.h,
          flexibleSpace: FlexibleSpaceBar(

            background: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.r),
                  color: AppColors.c_F5F6FA),
              margin: EdgeInsets.symmetric(horizontal: 22, vertical: 6),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 110),
                  Text(
                    "Balances",
                    style: AppTextStyle.interBold.copyWith(fontSize: 45.sp),
                  ),
                  SizedBox(height: 40),
                  SizedBox(
                    height: 150,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: const [
                        ContainerView(),
                        ContainerView(),
                        ContainerView(),
                        ContainerView(),
                        ContainerView(),
                        ContainerView(),
                        ContainerView(),
                      ],
                    ),
                  ),
                  SizedBox(height: 36.h),
                  Center(
                    child: Text(
                      "See Balance Details",
                      style: AppTextStyle.interBold
                          .copyWith(fontSize: 18.sp, color: AppColors.c_5771F9),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        const SliverPersistentHeader(
          delegate: Categories(),
          pinned: true,
        ),

        SliverGrid(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 800,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
            childAspectRatio: 4.0,
          ),
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Container(
                  alignment: Alignment.center,
                  child: const TodayWidget());
            },
            childCount: 10,
          ),
        ),

      ],
    ));
  }
}
