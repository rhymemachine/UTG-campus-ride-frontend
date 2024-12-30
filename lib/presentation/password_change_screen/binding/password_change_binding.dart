import '../controller/password_change_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PasswordChangeScreen.
///
/// This class ensures that the PasswordChangeController is created when the
/// PasswordChangeScreen is first loaded.
class PasswordChangeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PasswordChangeController());
  }
}
