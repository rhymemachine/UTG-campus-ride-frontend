import 'package:bustrackingapp/core/app_export.dart';
import 'package:bustrackingapp/presentation/recharge_balance_pop_up_screen/models/recharge_balance_pop_up_model.dart';

/// A controller class for the RechargeBalancePopUpScreen.
///
/// This class manages the state of the RechargeBalancePopUpScreen, including the
/// current rechargeBalancePopUpModelObj
class RechargeBalancePopUpController extends GetxController {
  Rx<RechargeBalancePopUpModel> rechargeBalancePopUpModelObj =
      RechargeBalancePopUpModel().obs;
}
