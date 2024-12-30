import 'package:bustrackingapp/core/app_export.dart';
import 'package:bustrackingapp/presentation/sign_up_screen/models/sign_up_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SignUpScreen.
///
/// This class manages the state of the SignUpScreen, including the
/// current signUpModelObj
class SignUpController extends GetxController {
  TextEditingController firstNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  Rx<SignUpModel> signUpModelObj = SignUpModel().obs;

  Rx<bool> isShowPassword = true.obs;

  Rx<bool> agreementText = false.obs;

  // @override
  // void onClose() {
  //   super.onClose();
  //   firstNameController.dispose();
  //   emailController.dispose();
  //   phoneNumberController.dispose();
  //   passwordController.dispose();
  // }
}
