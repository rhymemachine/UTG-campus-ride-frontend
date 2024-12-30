import '../controller/recharge_balance_pop_up_controller.dart';
import 'package:get/get.dart';

/// A binding class for the RechargeBalancePopUpScreen.
///
/// This class ensures that the RechargeBalancePopUpController is created when the
/// RechargeBalancePopUpScreen is first loaded.
class RechargeBalancePopUpBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RechargeBalancePopUpController());
  }
}
