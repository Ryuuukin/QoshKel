import 'package:QoshKel/features/authentication/screens/signup/widgets/term_conditions_checkbox.dart';
import 'package:QoshKel/features/authentication/screens/signup/widgets/verify_email.dart';
import 'package:QoshKel/utils/constants/sizes.dart';
import 'package:QoshKel/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class TSignupForm extends StatelessWidget {
  const TSignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(child: Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TextFormField(
                expands: false,
                decoration: const InputDecoration(labelText: TTexts.firstName),
              ),
            ),
            const SizedBox(width: TSizes.spaceBtwInputFields),
            Expanded(
              child: TextFormField(
                expands: false,
                decoration: const InputDecoration(labelText: TTexts.lastName),
              ),
            ),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwSections),
    
        //username
        TextFormField(
          expands: false,
          decoration: const InputDecoration(labelText: TTexts.username, prefixIcon: Icon(Iconsax.user_edit)),
        ),
        const SizedBox(height: TSizes.spaceBtwSections),
    
        //Email
        TextFormField(
          expands: false,
          decoration: const InputDecoration(labelText: TTexts.email, prefixIcon: Icon(Iconsax.direct)),
        ),
        const SizedBox(height: TSizes.spaceBtwSections),
    
        //Phone Number
        TextFormField(
          expands: false,
          decoration: const InputDecoration(labelText: TTexts.phoneNo, prefixIcon: Icon(Iconsax.call)),
        ),
        const SizedBox(height: TSizes.spaceBtwSections),
    
        //Password
        TextFormField(
          expands: false,
          decoration: const InputDecoration(
            labelText: TTexts.password, 
            prefixIcon: Icon(Iconsax.user_edit),
            suffixIcon: Icon(Iconsax.eye_slash),
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwSections),
    
      //Checkbox
      const TTermsAndConditionsCheckbox(),
    
      const SizedBox(height: TSizes.spaceBtwSections),
      SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () => Get.to(() => const VerifyEmailScreen()), child: const Text(TTexts.createAccount))),
      const SizedBox(height: TSizes.spaceBtwSections),
      ],
    ),
    );
  }
}
