import 'package:e_commerce_app/features/authentication/controllers/onboarder_controller.dart';
import 'package:e_commerce_app/features/authentication/screens/onbording/widgets/onboarding_next.dart';
import 'package:e_commerce_app/features/authentication/screens/onbording/widgets/onbording_navigator.dart';
import 'package:e_commerce_app/features/authentication/screens/onbording/widgets/onbording_page.dart';
import 'package:e_commerce_app/features/authentication/screens/onbording/widgets/onbording_skip.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboarderController());

    return Scaffold(
      body: Stack(
        children: [
          // Horizontally Scrollable Pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
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
          const OnBoardingNextButton(),
        ],
      ),
    );
  }
}
