import '../controller/onboarding_screen_four_controller.dart';
import 'package:get/get.dart';

/// A binding class for the OnboardingScreenFourScreen.
///
/// This class ensures that the OnboardingScreenFourController is created when the
/// OnboardingScreenFourScreen is first loaded.
class OnboardingScreenFourBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OnboardingScreenFourController());
  }
}
