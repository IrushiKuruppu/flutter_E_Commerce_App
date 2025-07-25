import 'package:e_commerce_app/features/authentication/controllers/onboarder_controller.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class OnBordingSkip extends StatelessWidget {
  const OnBordingSkip({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: TDeviceUtils.getAppBarHeight(),
      right: TSizes.defaultSpace,
      child: TextButton(
        onPressed: () => OnboarderController.instance.skipPage(),
        child: const Text("Skip"),
      ),
    );
  }
}
