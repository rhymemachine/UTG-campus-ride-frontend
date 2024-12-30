import 'package:bustrackingapp/core/app_export.dart';import 'package:bustrackingapp/presentation/add_a_card_defualt_screen/models/add_a_card_defualt_model.dart';import 'package:flutter/material.dart';/// A controller class for the AddACardDefualtScreen.
///
/// This class manages the state of the AddACardDefualtScreen, including the
/// current addACardDefualtModelObj
class AddACardDefualtController extends GetxController {TextEditingController cardNumberController = TextEditingController();

TextEditingController dateController = TextEditingController();

TextEditingController cvvController = TextEditingController();

Rx<AddACardDefualtModel> addACardDefualtModelObj = AddACardDefualtModel().obs;

@override void onClose() { super.onClose(); cardNumberController.dispose(); dateController.dispose(); cvvController.dispose(); } 
 }
