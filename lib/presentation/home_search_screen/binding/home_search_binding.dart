import '../controller/home_search_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HomeSearchScreen.
///
/// This class ensures that the HomeSearchController is created when the
/// HomeSearchScreen is first loaded.
class HomeSearchBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeSearchController());
  }
}
