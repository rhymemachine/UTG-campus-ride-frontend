import 'package:bustrackingapp/core/app_export.dart';import 'package:bustrackingapp/presentation/login_forgot_password_screen/models/login_forgot_password_model.dart';import 'package:flutter/material.dart';/// A controller class for the LoginForgotPasswordScreen.
///
/// This class manages the state of the LoginForgotPasswordScreen, including the
/// current loginForgotPasswordModelObj
class LoginForgotPasswordController extends GetxController {TextEditingController emailController = TextEditingController();

Rx<LoginForgotPasswordModel> loginForgotPasswordModelObj = LoginForgotPasswordModel().obs;

// @override void onClose() { super.onClose(); emailController.dispose(); }
 }
