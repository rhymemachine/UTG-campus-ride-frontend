import 'package:get/get.dart';
import 'buy_package_item_model.dart';

/// This class defines the variables used in the [buy_package_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class BuyPackageModel {
  Rx<List<BuyPackageItemModel>> buyPackageItemList =
      Rx(List.generate(list.length, (index) => list[index]));

  static List<BuyPackageItemModel> list = [
    BuyPackageItemModel(
passValidation: "lbl_1_week".tr,
      price: "lbl_600".tr
    ),

    BuyPackageItemModel(
        passValidation: "lbl_1_monthly".tr,
        price: "lbl_12002".tr
    ),

    BuyPackageItemModel(
        passValidation: "lbl_6_monthly".tr,
        price: "lbl_6000".tr
    ),
  ];
}
