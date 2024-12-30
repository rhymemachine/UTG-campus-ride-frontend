import '../controller/select_payment_method_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SelectPaymentMethodOneScreen.
///
/// This class ensures that the SelectPaymentMethodOneController is created when the
/// SelectPaymentMethodOneScreen is first loaded.
class SelectPaymentMethodOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SelectPaymentMethodOneController());
  }
}
