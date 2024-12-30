import '../controller/map_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MapScreen.
///
/// This class ensures that the MapController is created when the
/// MapScreen is first loaded.
class MapBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MapController());
  }
}
