// ignore_for_file: must_be_immutable

import 'package:flutter/services.dart';
import 'package:pinput/pinput.dart';

import 'controller/verification_controller.dart';
import 'package:bustrackingapp/core/app_export.dart';
import 'package:bustrackingapp/widgets/app_bar/appbar_iconbutton.dart';
import 'package:bustrackingapp/widgets/app_bar/custom_app_bar.dart';
import 'package:bustrackingapp/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class VerificationScreen extends GetWidget<VerificationController> {
   VerificationScreen({Key? key}) : super(key: key);


   GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: appTheme.whiteA700,
        appBar: CustomAppBar(
            height: getVerticalSize(72),
            leadingWidth: double.maxFinite,
            leading: AppbarIconbutton(
                svgPath: ImageConstant.imgArrowleft,
                margin: getMargin(left: 16, top: 8, right: 358, bottom: 8),
                onTap: () {
                  onTapArrowleftone();
                })),
        body: Container(
            width: double.maxFinite,
            padding: getPadding(left: 16, top: 20, right: 16, bottom: 20),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("lbl_verification".tr,
                      style: theme.textTheme.headlineMedium),
                  Padding(
                      padding: getPadding(top: 18),
                      child: Text("msg_check_your_email".tr,
                          style: theme.textTheme.bodyLarge)),

                  Form(
                    key: formKey,
                    child: Padding(
                        padding: getPadding(top: 47),
                        child: Obx(() =>
                            Pinput(

                              errorTextStyle: CustomTextStyles.bodyMediumRed600,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              disabledPinTheme: PinTheme(

                                  padding: getPadding(left: 8.5,right: 8.5),
                                  decoration: BoxDecoration(color: Colors.red)
                              ),
                              controller: controller.otpController.value,
                              length: 6,
                              keyboardType: TextInputType.number,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Please enter valid OTP";
                                }
                                return null;
                              },
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly,
                              ],

                              errorPinTheme: PinTheme(
                                padding: getPadding(left: 9,right: 9),
                                decoration: BoxDecoration(
                                  color: appTheme.gray100,
                                  border: Border.all(color:appTheme.red600 ),
                                  borderRadius:  BorderRadius.circular(
                                    getHorizontalSize(16),),

                                ),
                                textStyle: CustomTextStyles.headlineSmallSFProDisplayGray500,
                                width: getHorizontalSize(50.00),
                                height: getHorizontalSize(50.00),
                              ),
                              defaultPinTheme: PinTheme(
                                padding: getPadding(left: 8.5,right: 8.5),
                                width: getHorizontalSize(50.00),
                                height: getHorizontalSize(50.00),
                                textStyle:  theme.textTheme.bodyLarge,
                                decoration: BoxDecoration(
                                  color:appTheme.gray100,
                                  borderRadius:  BorderRadius.circular(
                                    getHorizontalSize(16),),

                                ),
                              ),
                            )
                        )
                    ),


                  ),

                  // Form(
                  //   key: formKey,
                  //   child: Obx(() => CustomPinCodeTextField(
                  //     context: context,
                  //     margin: getMargin(top: 34, right: 1),
                  //     controller: controller.otpController.value,
                  //
                  //     validator: (value) {
                  //       if(controller.otpController.value.text.isEmpty){
                  //         return "Please enter code";
                  //       }
                  //       return null;
                  //     },
                  //     onChanged: (value) {})),),

                  CustomElevatedButton(
                      text: "lbl_send".tr,
                      margin: getMargin(top: 40),
                      onTap: () {
                        if(formKey.currentState!.validate()){
                          onTapSend();
                        }

                      }),
                  Align(
                      alignment: Alignment.center,
                      child: Padding(
                          padding: getPadding(top: 18, bottom: 5),
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "msg_don_t_receive_code2".tr,
                                    style: theme.textTheme.bodyLarge),
                                TextSpan(
                                    text: "lbl_resend".tr,
                                    style: theme.textTheme.titleMedium)
                              ]),
                              textAlign: TextAlign.left)))
                ])));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] package to
  /// navigate to the previous screen in the navigation stack.
  onTapArrowleftone() {
    Get.back();
  }

  /// Navigates to the resetPasswordScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the resetPasswordScreen.
  onTapSend() {
    Get.toNamed(
      AppRoutes.resetPasswordScreen,
    );
  }
}
