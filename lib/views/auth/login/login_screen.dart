
import 'package:flutter/material.dart';
import 'package:hotle_ui/views/auth/login/widgets/login_form.dart';
import 'package:hotle_ui/views/auth/login/widgets/tlogin_header.dart';

import '../../../common/spacing_styles.dart';
import '../../../utils/constants/sizes.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(
    BuildContext context,
  ) {
    // final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(children: [
            TLoginHeader(dark: false),

//form
            const TLoginForm(),

//divider
// TFormDivider(dark: dark),
              const SizedBox(height: TSizes.spaceBtwSections),
//footer
// const TSocialButton()
          ]),
        ),
      ),
    );
  }
}





