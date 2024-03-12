import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sliver_appbar/screens/helper.dart';
import 'package:sliver_appbar/screens/bank/sliver_appbar.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(414, 896),
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData(),
          home: child,
          debugShowCheckedModeBanner: false,
        );
      },
      child: const HelperScreen(),
    );
  }
}



