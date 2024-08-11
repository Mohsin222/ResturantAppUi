
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/constants/images.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text.dart';

class TLoginHeader extends StatelessWidget {
  const TLoginHeader({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image(
            height: 150.h,
            image: AssetImage(
                dark ? TImages.appLogo : TImages.appLogo)),
        Text(
          TTexts.loginTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(
          height: TSizes.sm,
        ),
        Text(
          TTexts.loginTitle,
          style: Theme.of(context).textTheme.bodyMedium,
        )
      ],
    );
  }
}
