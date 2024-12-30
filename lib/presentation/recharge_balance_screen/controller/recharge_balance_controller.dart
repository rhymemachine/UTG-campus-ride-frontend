import 'package:bustrackingapp/core/app_export.dart';
import 'package:bustrackingapp/presentation/recharge_balance_screen/models/recharge_balance_model.dart';

/// A controller class for the RechargeBalanceScreen.
///
/// This class manages the state of the RechargeBalanceScreen, including the
/// current rechargeBalanceModelObj
class RechargeBalanceController extends GetxController {
  Rx<RechargeBalanceModel> rechargeBalanceModelObj = RechargeBalanceModel().obs;


  RxInt isSelected = (-1).obs;

  RxString selectedAmount = "lbl_100_00".tr.obs;

}
