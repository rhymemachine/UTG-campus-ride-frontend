import '../controller/recommended_routes_controller.dart';
import 'package:get/get.dart';

/// A binding class for the RecommendedRoutesScreen.
///
/// This class ensures that the RecommendedRoutesController is created when the
/// RecommendedRoutesScreen is first loaded.
class RecommendedRoutesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RecommendedRoutesController());
  }
}
