import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotle_ui/utils/constants/colors.dart';
import 'package:hotle_ui/views/home/hotle_home/hotle_home.dart';

import '../../utils/constants/images.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        width: 1.sw,
        height: 1.sh,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.pink),
          image: DecorationImage(image: AssetImage(TImages.startPageBackground),fit: BoxFit.cover)
      
        ),
        // alignment: Alignment,
      child:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
               children: [
                Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CutomStartScreenCard(
                title: 'Hotel',
                image:TImages.startHotelImage,
                onPress: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => HotleHomeScreen(),));
                },
                
                          ),
                          CutomStartScreenCard(
                            title: 'Caffe',
                image: TImages.startCoffeeImage,
                onPress: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context) => HotleHomeScreen(),));
                },
                
                          ),
                            CutomStartScreenCard(
                title: 'Hukka Bar',
                image: TImages.startHujjaImage,
                onPress: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context) => HotleHomeScreen(),));
                },
                
                            )
                        ],
                      ),
               ],
      ),
        // child: Center(
        //   child:     CutomStartScreenCard(),
          // child: Row(
          //   // crossAxisAlignment: CrossAxisAlignment.center,
          //   // mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //      CutomStartScreenCard(),
          //       CutomStartScreenCard(),
          //        CutomStartScreenCard(),
          //   ],
          // ),
        // ),
      ),
    );
  }
}

class CutomStartScreenCard extends StatelessWidget {
  final String title;
  final String image;
  final VoidCallback onPress;
  const CutomStartScreenCard({
    super.key, required this.title, required this.image, required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onPress,
        child: Card(
          color: Colors.white.withOpacity(0.2),
          child: Container(
            decoration: BoxDecoration(
              // color: Colors.white.withOpacity(0.7)
              color: Colors.transparent
            ),
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                 Container(
            width: 70.w,
            height: 70.w,
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.red
            ),
            child: Image(image: AssetImage(image),fit: BoxFit.cover,),
              
                 ),
               SizedBox(height: 20.h,),
                 Flexible(
                   child: Text(title,
                   style: TextStyle(
                             fontSize: 24.sp,
                             fontWeight: FontWeight.w800,
                             color: TColors.white
                   ),
                  //  maxLines: 2,
                   overflow: TextOverflow.ellipsis,
                   
                   ),
                 )
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}