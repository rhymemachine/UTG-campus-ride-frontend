import '../controller/home_search_filled_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HomeSearchFilledScreen.
///
/// This class ensures that the HomeSearchFilledController is created when the
/// HomeSearchFilledScreen is first loaded.
class HomeSearchFilledBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeSearchFilledController());
  }
}
