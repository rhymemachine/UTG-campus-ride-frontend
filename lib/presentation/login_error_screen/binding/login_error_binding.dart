import '../controller/login_error_controller.dart';
import 'package:get/get.dart';

/// A binding class for the LoginErrorScreen.
///
/// This class ensures that the LoginErrorController is created when the
/// LoginErrorScreen is first loaded.
class LoginErrorBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginErrorController());
  }
}
