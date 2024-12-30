import 'package:bustrackingapp/core/app_export.dart';import 'package:bustrackingapp/presentation/onboarding_screen_six_screen/models/onboarding_screen_six_model.dart';/// A controller class for the OnboardingScreenSixScreen.
///
/// This class manages the state of the OnboardingScreenSixScreen, including the
/// current onboardingScreenSixModelObj
class OnboardingScreenSixController extends GetxController {Rx<OnboardingScreenSixModel> onboardingScreenSixModelObj = OnboardingScreenSixModel().obs;

Rx<int> sliderIndex = 0.obs;

 }
