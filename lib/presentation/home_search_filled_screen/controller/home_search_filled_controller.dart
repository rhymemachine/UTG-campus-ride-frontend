import 'package:bustrackingapp/core/app_export.dart';import 'package:bustrackingapp/presentation/home_search_filled_screen/models/home_search_filled_model.dart';import 'package:flutter/material.dart';/// A controller class for the HomeSearchFilledScreen.
///
/// This class manages the state of the HomeSearchFilledScreen, including the
/// current homeSearchFilledModelObj
class HomeSearchFilledController extends GetxController {TextEditingController searchController = TextEditingController();

TextEditingController inputdefaultController = TextEditingController();

TextEditingController inputdefaultController1 = TextEditingController();

Rx<HomeSearchFilledModel> homeSearchFilledModelObj = HomeSearchFilledModel().obs;

@override void onClose() { super.onClose(); searchController.dispose(); inputdefaultController.dispose(); inputdefaultController1.dispose(); } 
 }
