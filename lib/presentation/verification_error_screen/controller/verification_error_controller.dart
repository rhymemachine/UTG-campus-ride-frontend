import 'package:bustrackingapp/core/app_export.dart';import 'package:bustrackingapp/presentation/verification_error_screen/models/verification_error_model.dart';import 'package:sms_autofill/sms_autofill.dart';import 'package:flutter/material.dart';/// A controller class for the VerificationErrorScreen.
///
/// This class manages the state of the VerificationErrorScreen, including the
/// current verificationErrorModelObj
class VerificationErrorController extends GetxController with  CodeAutoFill {Rx<TextEditingController> otpController = TextEditingController().obs;

Rx<VerificationErrorModel> verificationErrorModelObj = VerificationErrorModel().obs;

@override void codeUpdated() { otpController.value.text = code ?? ''; } 
@override void onInit() { super.onInit(); listenForCode(); } 
 }
