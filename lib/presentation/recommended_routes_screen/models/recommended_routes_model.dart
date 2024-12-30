import 'package:get/get.dart';
import 'busroute_item_model.dart';

/// This class defines the variables used in the [recommended_routes_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class RecommendedRoutesModel {
  Rx<List<BusrouteItemModel>> busrouteItemList =
      Rx(List.generate(list.length, (index) => list[index]));



  static List<BusrouteItemModel> list = [

    BusrouteItemModel(
      busName: "lbl_bus_01".tr,
      busNumber: "lbl_15".tr,
      busLocation: "msg_2_km_away_from_you".tr,
      busComingFrom: "msg_coming_from_manchester".tr
    ),

    BusrouteItemModel(
        busName: "lbl_bus_02".tr,
        busNumber: "lbl_25".tr,
        busLocation: "msg_4_5_km_away_from".tr,
        busComingFrom: "msg_coming_from_syracuse".tr
    ),

    BusrouteItemModel(
        busName: "lbl_bus_03".tr,
        busNumber: "lbl_28".tr,
        busLocation: "msg_6_km_away_from_you".tr,
        busComingFrom: "msg_coming_from_delaware".tr
    ),

    BusrouteItemModel(
        busName: "lbl_bus_04".tr,
        busNumber: "lbl_32".tr,
        busLocation: "msg_8_km_away_from_you".tr,
        busComingFrom: "msg_coming_from_thornridge".tr
    ),
    BusrouteItemModel(
        busName: "lbl_bus_05".tr,
        busNumber: "lbl_15".tr,
        busLocation: "msg_2_km_away_from_you".tr,
        busComingFrom: "msg_coming_from_manchester".tr
    ),

  ];




}
