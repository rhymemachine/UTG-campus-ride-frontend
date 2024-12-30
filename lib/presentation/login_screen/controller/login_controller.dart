import 'package:bustrackingapp/core/app_export.dart';
import 'package:bustrackingapp/presentation/login_screen/models/login_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// A controller class for the LoginScreen.
///
/// This class manages the state of the LoginScreen, including the
/// current loginModelObj
// class LoginController extends GetxController {
//   TextEditingController emailController = TextEditingController();
//
//   TextEditingController passwordController = TextEditingController();
//
//   Rx<LoginModel> loginModelObj = LoginModel().obs;
//
//   // @override
//   // void onClose() {
//   //   super.onClose();
//   //   emailController.dispose();
//   //   passwordController.dispose();
//   // }
// }

class LoginController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Rx<LoginModel> loginModelObj = LoginModel().obs;
  RxString authToken = ''.obs; // Store the token

  // Future<void> login() async {
  //   try {
  //     final response = await GetConnect().post(
  //       'https://bus.utg.gm/api/login',
  //       {
  //         'email': emailController.text,
  //         'password': passwordController.text,
  //       },
  //     );
  //
  //     if (response.statusCode == 200 && response.body['token'] != null) {
  //       authToken.value = response.body['token'];
  //       loginModelObj.value = LoginModel(
  //         message: response.body['message'],
  //       );
  //       // Navigate to the home screen
  //       Get.toNamed(AppRoutes.homeContainerScreen);
  //     } else {
  //       Get.snackbar(
  //         'Error',
  //         response.body['message'] ?? 'Login failed',
  //         snackPosition: SnackPosition.BOTTOM,
  //       );
  //     }
  //   } catch (e) {
  //     Get.snackbar(
  //       'Error',
  //       'An unexpected error occurred',
  //       snackPosition: SnackPosition.BOTTOM,
  //     );
  //   }
  // }
  Future<void> login() async {
    try {
      final response = await GetConnect().post(
        'https://bus.utg.gm/api/login',
        {
          'email': emailController.text,
          'password': passwordController.text,
        },
      );

      if (response.statusCode == 200 && response.body['token'] != null) {
        authToken.value = response.body['token'];
        print('Token: ${authToken.value}'); // Log the token

        loginModelObj.value = LoginModel(
          message: response.body['message'],
        );

        // Navigate to the home screen
        Get.toNamed(AppRoutes.homeContainerScreen);
      } else {
        Get.snackbar(
          'Error',
          response.body['message'] ?? 'Login failed',
          snackPosition: SnackPosition.BOTTOM,
        );
      }
    } catch (e) {
      Get.snackbar(
        'Error',
        'An unexpected error occurred: $e',
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }

}