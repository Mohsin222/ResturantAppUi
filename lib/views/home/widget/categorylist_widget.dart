import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotle_ui/dummy/category_list.dart';
import 'package:hotle_ui/models/category_model.dart';
import 'package:hotle_ui/utils/constants/colors.dart';
import 'package:hotle_ui/utils/constants/sizes.dart';
import 'package:hotle_ui/views/home/hotle_home/hotle_home.dart';

class CategoryListWidget extends StatelessWidget {
  const CategoryListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
          padding: EdgeInsets.symmetric(horizontal: TSizes.md),
        height: 100.h,
        child:   ListView.separated(
          separatorBuilder: (context, index) => SizedBox(width: 10.w),
        
          itemCount: CategoryDummyData.categoryList.length,
        
          scrollDirection: Axis.horizontal,
        
          itemBuilder: (context, index) {
        CategoryModel categoryModel =CategoryDummyData.categoryList[index];
          return CatoriesCard(categoryModel:categoryModel ,);
        
        },),
      );
  }
}



class CatoriesCard extends StatelessWidget {
  final CategoryModel categoryModel;
  const CatoriesCard({
    super.key, required this.categoryModel,
   
  });


  @override
  Widget build(BuildContext context) {
    return Container(
  
    width: 100.w,
  
    height: 100.h,
  
    decoration: BoxDecoration(
  
      image: DecorationImage(image: AssetImage(categoryModel.iamgeUrl),fit: BoxFit.cover),
  
          borderRadius: BorderRadius.circular(TSizes.md)
  
  
  
    ),
  
    alignment: Alignment.bottomLeft,
  
    child: Padding(
  
      padding: const EdgeInsets.all(8.0),
  
      child: Text(categoryModel.name,
      style: TextStyle(
        fontSize: TSizes.fontSizeMd,
        color: TColors.textWhite
      ),
      ),
  
    ),
  
  );
  }
}