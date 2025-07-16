import 'package:e_commerce_app/features/authentication/screens/onbording/widgets/onbording_navigator.dart';
import 'package:e_commerce_app/features/authentication/screens/onbording/widgets/onbording_page.dart';
import 'package:e_commerce_app/features/authentication/screens/onbording/widgets/onbording_skip.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/text_strings.dart';
import 'package:e_commerce_app/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Horizontally Scrollable Pages
          PageView(
            children: [
              OnBordingPage(
                image: TImages.onBrordingImage1,
                title: TTexts.tOnBoardingTitle1,
                subTitle: TTexts.tOnBoardingSubTitle1,
              ),
              OnBordingPage(
                image: TImages.onBordingImage2,
                title: TTexts.tOnBoardingTitle2,
                subTitle: TTexts.tOnBoardingSubTitle2,
              ),
              OnBordingPage(
                image: TImages.onBordingImage3,
                title: TTexts.tOnBoardingTitle3,
                subTitle: TTexts.tOnBoardingSubTitle3,
              ),
            ],
          ),
          // Skip Button
          const OnBordingSkip(),
          // Dot Navigation SmoothPageIndicator
          const OnBordingNavigation(),
          // Circular Button
          Positioned(
            right: TSizes.defaultSpace,
            bottom: TDeviceUtils.getBottomNavigationBarHeight(),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                backgroundColor: Colors.black,
              ),
              child: Icon(Iconsax.arrow_right_3),
            ),
          ),
        ],
      ),
    );
  }
}
