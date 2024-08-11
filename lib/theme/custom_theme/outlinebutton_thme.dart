import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TOutlineButtonTheme{

TOutlineButtonTheme._();

    static final   lightOutlineButtonTheme= OutlinedButtonThemeData(
style: OutlinedButton.styleFrom(
  elevation: 0,
  foregroundColor: Colors.black,


  side:  const BorderSide(color: Colors.blue),
 textStyle:  TextStyle(fontSize: 16.sp,color: Colors.black,fontWeight: FontWeight.w600),


  padding:  EdgeInsets.symmetric(vertical: 16.h,horizontal: 20.w),

 
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14.r)),
)
    );


       static final   darkOutlineButtonTheme= OutlinedButtonThemeData(
style: OutlinedButton.styleFrom(
  elevation: 0,
  foregroundColor: Colors.white,

  side:  const BorderSide(color: Colors.blueAccent),
 textStyle:  TextStyle(fontSize: 16.sp,color: Colors.white,fontWeight: FontWeight.w600),


  padding:  EdgeInsets.symmetric(vertical: 16.h,horizontal: 20.w),

 
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14.r)),
)
    );
}