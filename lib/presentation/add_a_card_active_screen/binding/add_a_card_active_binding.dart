import '../controller/add_a_card_active_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AddACardActiveScreen.
///
/// This class ensures that the AddACardActiveController is created when the
/// AddACardActiveScreen is first loaded.
class AddACardActiveBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddACardActiveController());
  }
}
