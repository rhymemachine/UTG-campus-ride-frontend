import '../controller/bus_routes_controller.dart';
import 'package:get/get.dart';

/// A binding class for the BusRoutesScreen.
///
/// This class ensures that the BusRoutesController is created when the
/// BusRoutesScreen is first loaded.
class BusRoutesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BusRoutesController());
  }
}
