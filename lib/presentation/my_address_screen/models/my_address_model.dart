import 'package:get/get.dart';
import 'useraddress_item_model.dart';

/// This class defines the variables used in the [my_address_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class MyAddressModel {
  Rx<List<UseraddressItemModel>> useraddressItemList =
      Rx(List.generate(list.length, (index) => list[index]));


  static List<UseraddressItemModel> list = [
    UseraddressItemModel(
      title: "lbl_home".tr,
      address: "msg_4140_parker_rd2".tr,
      isDefault: true,
    ),

    UseraddressItemModel(
      title: "lbl_office".tr,
      address: "msg_1901_thornridge".tr,
      isDefault: false,
    ),

    UseraddressItemModel(
      title: "lbl_home_2".tr,
      address: "msg_1901_thornridge".tr,
      isDefault: false,
    ),

    UseraddressItemModel(
      title: "lbl_office_2".tr,
      address: "msg_2972_westheimer".tr,
      isDefault: false,
    ),
  ];
}
