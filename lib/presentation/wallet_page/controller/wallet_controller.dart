import 'package:bustrackingapp/core/app_export.dart';
import 'package:bustrackingapp/presentation/wallet_page/models/wallet_model.dart';

/// A controller class for the WalletPage.
///
/// This class manages the state of the WalletPage, including the
/// current walletModelObj
class WalletController extends GetxController {
  WalletController(this.walletModelObj);

  Rx<WalletModel> walletModelObj;
}
