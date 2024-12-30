import 'package:bustrackingapp/core/app_export.dart';import 'package:bustrackingapp/presentation/add_new_address_screen/models/add_new_address_model.dart';import 'package:flutter/material.dart';/// A controller class for the AddNewAddressScreen.
///
/// This class manages the state of the AddNewAddressScreen, including the
/// current addNewAddressModelObj
class AddNewAddressController extends GetxController {TextEditingController nameoneController = TextEditingController();

TextEditingController addressoneController = TextEditingController();

TextEditingController zipcodeController = TextEditingController();

TextEditingController cityoneController = TextEditingController();

TextEditingController stateoneController = TextEditingController();

Rx<AddNewAddressModel> addNewAddressModelObj = AddNewAddressModel().obs;

SelectionPopupModel? selectedDropDownValue;

@override void onClose() { super.onClose(); nameoneController.dispose(); addressoneController.dispose(); zipcodeController.dispose(); cityoneController.dispose(); stateoneController.dispose(); } 
onSelected(dynamic value) { for (var element in addNewAddressModelObj.value.dropdownItemList.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} addNewAddressModelObj.value.dropdownItemList.refresh(); } 
 }
