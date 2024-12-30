
import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:bustrackingapp/presentation/add_a_card_active_screen/models/add_a_card_active_model.dart';

/// A controller class for the AddACardActiveScreen.
///
/// This class manages the state of the AddACardActiveScreen, including the
/// current addACardActiveModelObj
class AddACardActiveController extends GetxController {
  TextEditingController cardnumberoneController = TextEditingController();

  TextEditingController expirationdateController = TextEditingController();

  TextEditingController cvvoneController = TextEditingController();

  Rx<AddACardActiveModel> addACardActiveModelObj = AddACardActiveModel().obs;

  @override
  void onClose() {
    super.onClose();
    cardnumberoneController.dispose();
    expirationdateController.dispose();
    cvvoneController.dispose();
  }
}
