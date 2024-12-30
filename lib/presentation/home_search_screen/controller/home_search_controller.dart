import 'package:bustrackingapp/core/app_export.dart';
import 'package:bustrackingapp/presentation/home_search_screen/models/home_search_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the HomeSearchScreen.
///
/// This class manages the state of the HomeSearchScreen, including the
/// current homeSearchModelObj
class HomeSearchController extends GetxController {
  TextEditingController searchController = TextEditingController();

  TextEditingController locationController = TextEditingController();

  TextEditingController actiononeController = TextEditingController();

  Rx<HomeSearchModel> homeSearchModelObj = HomeSearchModel().obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
    locationController.dispose();
    actiononeController.dispose();
  }
}
