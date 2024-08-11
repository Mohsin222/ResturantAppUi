import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotle_ui/theme/theme.dart';
import 'package:hotle_ui/views/auth/login/login_screen.dart';
import 'package:hotle_ui/views/home/hotle_home/hotle_home.dart';
import 'package:hotle_ui/views/start/start_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
      
    builder :(context,child){
      return MaterialApp(
        debugShowCheckedModeBanner: false,
      title: 'Resturant',
        theme:TAppTheme.lightTheme,
      home: StartScreen(),
    );
    }
    );
  }
}
