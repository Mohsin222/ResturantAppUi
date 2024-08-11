import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotle_ui/common/shapes/t_rounded_container.dart';
import 'package:hotle_ui/common/widget/gridlayout.dart';
import 'package:hotle_ui/utils/constants/colors.dart';
import 'package:hotle_ui/utils/constants/images.dart';
import 'package:hotle_ui/utils/constants/sizes.dart';

import '../../../common/shapes/t_rounded_image.dart';
import '../../../common/widget/text/tproduct_text_title.dart';
import '../widget/categorylist_widget.dart';
import '../widget/product_list_widget.dart';

class HotleHomeScreen extends StatelessWidget {
   HotleHomeScreen({super.key});


List categoriesIamges=[
  "https://images.unsplash.com/photo-1590947132387-155cc02f3212?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  "https://images.unsplash.com/photo-1568901346375-23c9450c58cd?q=80&w=1398&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  "https://images.unsplash.com/photo-1502038683567-85dc225345c1?q=80&w=1473&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  "https://images.unsplash.com/photo-1558030006-450675393462?q=80&w=1631&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: TColors.white,
        title: ListTile(
          leading: CircleAvatar(radius: 30.r,
          backgroundImage: NetworkImage('https://images.unsplash.com/photo-1534528741775-53994a69daeb?q=80&w=1528&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),


          ),
          title: Text('User'),
        ),
      ),
      body:SingleChildScrollView(
        child: Column(
        
          // mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: TSizes.defaultSpace,),
      Padding(
         padding: EdgeInsets.symmetric(horizontal: TSizes.md),
        child:   Container(
        
          // padding: EdgeInsets.all(TSizes.md),
        
          height: 200.h,
        
          width: 1.sw,
        
          decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(TSizes.borderRadiusMd),
      
        image: DecorationImage(image: AssetImage(TImages.bannerImage,),fit: BoxFit.cover),
        
        
        
          ),
        
        ),
      ),
      
      SizedBox(height: TSizes.defaultSpace,),
      CustomMediumHeading(text: 'Categories'),
      SizedBox(height: TSizes.defaultSpace/2,),
      
      CategoryListWidget(),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomMediumHeading(text: 'Products'),
      
          TextButton(onPressed: (){}, child: Text('View All'))
        ],
      ),
      ProductListWidget(),
     
      
      
      
          ],
        ),
      ) ,
    );
  }
}

class CustomMediumHeading extends StatelessWidget {
  final String text;
  const CustomMediumHeading({
    super.key, required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return     Container(
    
         padding: EdgeInsets.symmetric(horizontal: TSizes.md),
    
    
    
      child: Text(text,
    
      style: TextStyle(color: TColors.black,
    
      fontSize: TSizes.fontSizeLg,
    
      fontWeight: FontWeight.bold
    
      ),
    
      ),
    
      
    
    );
  }
}

