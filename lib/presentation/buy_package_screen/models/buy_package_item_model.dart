import 'package:get/get.dart';

/// This class is used in the [buy_package_item_widget] screen.

class BuyPackageItemModel {
  Rx<String> weekCounterTxt = Rx("1 Week");

  Rx<String>? id = Rx("");

  String? passValidation;
  String? price;

  BuyPackageItemModel({this.passValidation, this.price});
}
