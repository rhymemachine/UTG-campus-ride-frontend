import 'package:bustrackingapp/core/app_export.dart';
import 'package:bustrackingapp/presentation/edit_address_screen/models/edit_address_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the EditAddressScreen.
///
/// This class manages the state of the EditAddressScreen, including the
/// current editAddressModelObj
class EditAddressController extends GetxController {
  TextEditingController nameoneController = TextEditingController();

  TextEditingController groupFiftyOneController = TextEditingController();

  TextEditingController zipcodeController = TextEditingController();

  TextEditingController cityoneController = TextEditingController();

  TextEditingController stateoneController = TextEditingController();

  Rx<EditAddressModel> editAddressModelObj = EditAddressModel().obs;

  SelectionPopupModel? selectedDropDownValue;


  @override
  void onInit() {
    super.onInit();
    nameoneController.text = "Ronald richards";
    groupFiftyOneController.text = "4140 Parker rd. allentown, new mexico 31134";
    zipcodeController.text = "395662";
    cityoneController.text = "Allentown";
    stateoneController.text = "New mexico";

  }

  // @override
  // void onClose() {
  //   super.onClose();
  //   nameoneController.dispose();
  //   groupFiftyOneController.dispose();
  //   zipcodeController.dispose();
  //   cityoneController.dispose();
  //   stateoneController.dispose();
  // }


  onSelected(dynamic value) {
    for (var element in editAddressModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    editAddressModelObj.value.dropdownItemList.refresh();
  }
}
