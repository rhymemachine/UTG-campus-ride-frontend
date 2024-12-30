import '../controller/package_booking_pop_up_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PackageBookingPopUpScreen.
///
/// This class ensures that the PackageBookingPopUpController is created when the
/// PackageBookingPopUpScreen is first loaded.
class PackageBookingPopUpBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PackageBookingPopUpController());
  }
}
