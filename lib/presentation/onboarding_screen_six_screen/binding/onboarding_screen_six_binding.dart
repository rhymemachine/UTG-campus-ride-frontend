import '../controller/onboarding_screen_six_controller.dart';
import 'package:get/get.dart';

/// A binding class for the OnboardingScreenSixScreen.
///
/// This class ensures that the OnboardingScreenSixController is created when the
/// OnboardingScreenSixScreen is first loaded.
class OnboardingScreenSixBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OnboardingScreenSixController());
  }
}
