import 'package:bustrackingapp/core/app_export.dart';
import 'package:bustrackingapp/presentation/edit_profile_screen/models/edit_profile_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the EditProfileScreen.
///
/// This class manages the state of the EditProfileScreen, including the
/// current editProfileModelObj
class EditProfileController extends GetxController {
  TextEditingController nameoneController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController phoneoneController = TextEditingController();

  Rx<EditProfileModel> editProfileModelObj = EditProfileModel().obs;


  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    nameoneController.text = "Ronald richards";
    emailController.text = "ronaldrichards@gmail.com";
    phoneoneController.text = "(405) 555-0128";



  }

  // @override
  // void onClose() {
  //   super.onClose();
  //   nameoneController.dispose();
  //   emailController.dispose();
  //   phoneoneController.dispose();
  // }
}
