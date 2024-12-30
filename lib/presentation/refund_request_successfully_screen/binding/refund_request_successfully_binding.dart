import '../controller/refund_request_successfully_controller.dart';
import 'package:get/get.dart';

/// A binding class for the RefundRequestSuccessfullyScreen.
///
/// This class ensures that the RefundRequestSuccessfullyController is created when the
/// RefundRequestSuccessfullyScreen is first loaded.
class RefundRequestSuccessfullyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RefundRequestSuccessfullyController());
  }
}
