import '../controller/onboarding_screen_five_controller.dart';
import 'package:get/get.dart';

/// A binding class for the OnboardingScreenFiveScreen.
///
/// This class ensures that the OnboardingScreenFiveController is created when the
/// OnboardingScreenFiveScreen is first loaded.
class OnboardingScreenFiveBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OnboardingScreenFiveController());
  }
}
