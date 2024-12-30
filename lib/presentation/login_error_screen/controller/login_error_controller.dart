import 'package:bustrackingapp/core/app_export.dart';import 'package:bustrackingapp/presentation/login_error_screen/models/login_error_model.dart';import 'package:flutter/material.dart';/// A controller class for the LoginErrorScreen.
///
/// This class manages the state of the LoginErrorScreen, including the
/// current loginErrorModelObj
class LoginErrorController extends GetxController {TextEditingController emailController = TextEditingController();

TextEditingController emailController1 = TextEditingController();

Rx<LoginErrorModel> loginErrorModelObj = LoginErrorModel().obs;

@override void onClose() { super.onClose(); emailController.dispose(); emailController1.dispose(); } 
 }
