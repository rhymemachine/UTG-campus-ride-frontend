import '../controller/recharge_balance_controller.dart';
import 'package:get/get.dart';

/// A binding class for the RechargeBalanceScreen.
///
/// This class ensures that the RechargeBalanceController is created when the
/// RechargeBalanceScreen is first loaded.
class RechargeBalanceBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RechargeBalanceController());
  }
}
