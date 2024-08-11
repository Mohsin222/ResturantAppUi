
import 'package:flutter/material.dart';


import '../../../../../utils/constants/sizes.dart';


class TLoginForm extends StatelessWidget {
  const TLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Padding(
      padding:
          const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
      child: Column(
        children: [
          //email

          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.email),
              labelText:'Email',
            ),
          ),

          const SizedBox(
            height: TSizes.spaceBtwinputFeilds,
          ),

          //passoword

          TextFormField(
            decoration: const InputDecoration(
                prefixIcon: Icon(Icons.password),
                labelText: 'Password',
                suffixIcon: Icon(Icons.remove_red_eye)),
          ),

          const SizedBox(
            height: TSizes.spaceBtwinputFeilds / 2,
          ),

          //Remember me and forget password

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Checkbox(value: true, onChanged: (value) {}),
                  const Text('rememberMe'),
                ],
              ),

              // forget password

              TextButton(
                  onPressed: () =>{
                    // Get.to(const ForgetPasswordScreen()
                  }, child: Text('Forget Password'),),
            ],
          ),

          const SizedBox(
            height: TSizes.spaceBtwSections,
          ),

          //signin button

          SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: (){
                    // Get.to(const NavigationMenu())
                  }, child: const Text('Sign In'))),

          const SizedBox(height: TSizes.spaceBtwItems),

          //create  new account

          SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                  onPressed: () {
// Get.to(const SingUpScreen());
                  },
                  child: const Text('Sign Up')))
        ],
      ),
    ));
  }
}