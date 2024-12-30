import '../controller/login_forgot_password_controller.dart';
import 'package:get/get.dart';

/// A binding class for the LoginForgotPasswordScreen.
///
/// This class ensures that the LoginForgotPasswordController is created when the
/// LoginForgotPasswordScreen is first loaded.
class LoginForgotPasswordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginForgotPasswordController());
  }
}
