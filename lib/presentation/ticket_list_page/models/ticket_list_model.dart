import 'package:get/get.dart';
import 'bustrip_item_model.dart';

/// This class defines the variables used in the [ticket_list_page],
/// and is typically used to hold data that is passed between different parts of the application.
class TicketListModel {
  Rx<List<BustripItemModel>> bustripItemList =
      Rx(List.generate(list.length, (index) => list[index]));

  static List<BustripItemModel> list = [
    BustripItemModel(
      busName: "lbl_bus_01".tr,
      distance: "lbl_02_km".tr,
      price: "lbl_10_00".tr,
      duration: "lbl_50_minutes".tr
    ),

    BustripItemModel(
        busName: "lbl_bus_02".tr,
        distance: "lbl_08_km".tr,
        price: "lbl_20_00".tr,
        duration: "lbl_1_hour_15_min".tr
    ),


    BustripItemModel(
        busName: "lbl_bus_01".tr,
        distance: "lbl_06_km".tr,
        price: "lbl_16_00".tr,
        duration: "lbl_40_minutes".tr
    ),


    BustripItemModel(
        busName: "lbl_bus_04".tr,
        distance: "lbl_03_km".tr,
        price: "lbl_12_00".tr,
        duration: "lbl_20_minutes".tr
    ),


    BustripItemModel(
        busName: "lbl_bus_03".tr,
        distance: "lbl_08_km".tr,
        price: "lbl_20_00".tr,
        duration: "lbl_50_minutes".tr
    ),
  ];
}
