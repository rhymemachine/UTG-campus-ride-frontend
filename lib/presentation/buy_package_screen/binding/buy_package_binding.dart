import '../controller/buy_package_controller.dart';
import 'package:get/get.dart';

/// A binding class for the BuyPackageScreen.
///
/// This class ensures that the BuyPackageController is created when the
/// BuyPackageScreen is first loaded.
class BuyPackageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BuyPackageController());
  }
}
