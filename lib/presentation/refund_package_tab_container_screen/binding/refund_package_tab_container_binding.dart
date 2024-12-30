import '../controller/refund_package_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the RefundPackageTabContainerScreen.
///
/// This class ensures that the RefundPackageTabContainerController is created when the
/// RefundPackageTabContainerScreen is first loaded.
class RefundPackageTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RefundPackageTabContainerController());
  }
}
