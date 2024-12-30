import 'package:bustrackingapp/core/app_export.dart';import 'package:bustrackingapp/presentation/buy_package_screen/models/buy_package_model.dart';/// A controller class for the BuyPackageScreen.
///
/// This class manages the state of the BuyPackageScreen, including the
/// current buyPackageModelObj
class BuyPackageController extends GetxController {Rx<BuyPackageModel> buyPackageModelObj = BuyPackageModel().obs;

 }
