import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:hotle_ui/utils/constants/colors.dart';
import 'package:hotle_ui/utils/constants/sizes.dart';

class TRoundedImage extends StatelessWidget {
  const TRoundedImage({
    super.key, this.width, this.height,
     required this.imageUrl,  
     this.applyImageRadius=true,

      this.border, 
      
       this.fit=BoxFit.contain, 
       this.padding, 
        this.backgroundColor =TColors.light,
        this.isNetworkImage=false, 
       this.onPressed, 
        this.borderRadius=TSizes.md,
  });

  final  double? width, height;
  final String imageUrl;
  final bool applyImageRadius;
  final BoxBorder? border;
  final Color backgroundColor;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final bool isNetworkImage;
  final VoidCallback? onPressed;
final double borderRadius;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        padding: padding,
        
        decoration: BoxDecoration(
          // color: Colors.red,
          border: border,
          borderRadius: BorderRadius.circular(borderRadius),
          
        ),
        child: ClipRRect(
  
        borderRadius:applyImageRadius ? BorderRadius.circular(borderRadius): BorderRadius.zero ,
          child:  Image(image: isNetworkImage? NetworkImage(imageUrl):  AssetImage(imageUrl) as ImageProvider,
          fit: fit,
          )),
      ),
    );
  }
}