import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotle_ui/common/shapes/t_rounded_image.dart';
import 'package:hotle_ui/common/widget/gridlayout.dart';
import 'package:hotle_ui/models/product_model.dart';
import 'package:hotle_ui/utils/constants/colors.dart';
import 'package:hotle_ui/utils/constants/sizes.dart';

import '../../../common/shapes/t_rounded_container.dart';
import '../../../common/widget/text/tproduct_text_title.dart';
import '../../../dummy/product_list.dart';
import '../../../utils/constants/images.dart';

class ProductListWidget extends StatelessWidget {
  const ProductListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  TGridLayout(
        itemCount: ProductDummyData.productList.length,
      
      itemBuilder: (context, index) {

        ProductModel productModel =ProductDummyData.productList[index];
        return Container(
             width: 250.w,
          padding: const EdgeInsets.all(1),
          decoration: BoxDecoration(
      
            borderRadius: BorderRadius.circular(TSizes.productImageRadius),
            color:TColors.white,
          ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
      TRoundedContainer(
        height: 180.h,
              padding: const EdgeInsets.all(TSizes.sm),
      
              child:          TRoundedImage(imageUrl:productModel.iamgeUrl ,applyImageRadius: true,
              isNetworkImage: false,
              width: 1.sw,
              fit: BoxFit.fill,
              ),
      ),
         const SizedBox(height: TSizes.spaceBtwItems/2,),
          //details
          Padding(padding: const EdgeInsets.all(TSizes.sm),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TProductTitleText(title: productModel.name,smallSize: true,),
              SizedBox(height: TSizes.spaceBtwItems/2,),
                              Text('Rs ${productModel.price}''\$'),
            ],
          ),
          ),
                // const Spacer(),

             
                        InkWell(
                            onTap: (){
                           
                            }, child: Container(
                              margin: EdgeInsets.symmetric(horizontal: TSizes.sm),
                              padding: EdgeInsets.all(TSizes.sm),
                              decoration: BoxDecoration(color: Colors.green,
                              borderRadius: BorderRadius.circular(TSizes.md)
                              ),
                                 width: double.infinity,
                                 alignment: Alignment.center,
                              child: const Text('Order',
                              style: TextStyle(color: TColors.textWhite),
                              )),
                            ),
   
      
        ],
      ),
        );
      },
      
      );
  }
}