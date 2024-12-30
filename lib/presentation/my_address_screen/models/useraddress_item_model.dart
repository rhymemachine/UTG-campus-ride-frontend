import 'package:get/get.dart';

/// This class is used in the [useraddress_item_widget] screen.

class UseraddressItemModel {
  Rx<String> homeTxt = Rx("Home");

  Rx<String> addressTxt = Rx("4140 Parker rd. allentown, new mexico 31134");

  Rx<String>? id = Rx("");

  String? title;
  String? address;
  bool? isDefault;

  UseraddressItemModel({this.title, this.address, this.isDefault});
}
