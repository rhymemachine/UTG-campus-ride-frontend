import 'package:bustrackingapp/core/app_export.dart';
import 'package:bustrackingapp/presentation/onboarding_screen_four_screen/models/onboarding_screen_four_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the OnboardingScreenFourScreen.
///
/// This class manages the state of the OnboardingScreenFourScreen, including the
/// current onboardingScreenFourModelObj
class OnboardingScreenFourController extends GetxController {
  Rx<OnboardingScreenFourModel> onboardingScreenFourModelObj =
      OnboardingScreenFourModel().obs;

  Rx<int> sliderIndex = 0.obs;

  PageController pageController = PageController();
}
