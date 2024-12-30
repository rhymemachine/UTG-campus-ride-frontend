import '../controller/share_ride_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ShareRideScreen.
///
/// This class ensures that the ShareRideController is created when the
/// ShareRideScreen is first loaded.
class ShareRideBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ShareRideController());
  }
}
