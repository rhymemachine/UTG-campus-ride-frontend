import 'package:get/get.dart';
import 'refund_package_item_model.dart';

/// This class defines the variables used in the [refund_package_page],
/// and is typically used to hold data that is passed between different parts of the application.
class RefundPackageModel {
  Rx<List<RefundPackageItemModel>> refundPackageItemList =
      Rx(List.generate(list.length, (index) => list[index]));


  static List<RefundPackageItemModel> list = [
   RefundPackageItemModel(
       passValidation: "lbl_1_week".tr,
       price: "lbl_600".tr
   ),

   RefundPackageItemModel(
       passValidation: "lbl_1_monthly".tr,
       price: "lbl_12002".tr
   ),

   RefundPackageItemModel(
       passValidation: "lbl_1_week".tr,
       price: "lbl_600".tr
   ),
  ];
}
