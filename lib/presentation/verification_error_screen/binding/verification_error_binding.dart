import '../controller/verification_error_controller.dart';
import 'package:get/get.dart';

/// A binding class for the VerificationErrorScreen.
///
/// This class ensures that the VerificationErrorController is created when the
/// VerificationErrorScreen is first loaded.
class VerificationErrorBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VerificationErrorController());
  }
}
