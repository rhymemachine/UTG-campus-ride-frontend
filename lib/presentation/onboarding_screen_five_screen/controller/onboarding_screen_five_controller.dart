import 'package:bustrackingapp/core/app_export.dart';import 'package:bustrackingapp/presentation/onboarding_screen_five_screen/models/onboarding_screen_five_model.dart';/// A controller class for the OnboardingScreenFiveScreen.
///
/// This class manages the state of the OnboardingScreenFiveScreen, including the
/// current onboardingScreenFiveModelObj
class OnboardingScreenFiveController extends GetxController {Rx<OnboardingScreenFiveModel> onboardingScreenFiveModelObj = OnboardingScreenFiveModel().obs;

Rx<int> sliderIndex = 0.obs;

 }
