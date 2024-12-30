import '../controller/logout_controller.dart';
import 'package:get/get.dart';

/// A binding class for the LogoutScreen.
///
/// This class ensures that the LogoutController is created when the
/// LogoutScreen is first loaded.
class LogoutBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LogoutController());
  }
}
