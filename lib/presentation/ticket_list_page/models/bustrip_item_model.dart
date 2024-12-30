import 'package:get/get.dart';/// This class is used in the [bustrip_item_widget] screen.
class BustripItemModel {Rx<String> busNameTxt = Rx("Bus 01");

Rx<String> distanceTxt = Rx("02 Km");

Rx<String> priceTxt = Rx("10.00");

Rx<String> durationTxt = Rx("50 Minutes ");

Rx<String>? id = Rx("");



String? busName;
String? distance;
String? price;
String? duration;

BustripItemModel({this.busName, this.distance, this.price, this.duration});
}
