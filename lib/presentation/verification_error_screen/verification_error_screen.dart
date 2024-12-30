import 'controller/verification_error_controller.dart';
import 'package:bustrackingapp/core/app_export.dart';
import 'package:bustrackingapp/widgets/app_bar/appbar_iconbutton.dart';
import 'package:bustrackingapp/widgets/app_bar/custom_app_bar.dart';
import 'package:bustrackingapp/widgets/custom_elevated_button.dart';
import 'package:bustrackingapp/widgets/custom_pin_code_text_field.dart';
import 'package:flutter/material.dart';

class VerificationErrorScreen extends GetWidget<VerificationErrorController> {
  const VerificationErrorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
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
                      Obx(() => CustomPinCodeTextField(
                          context: context,
                          margin: getMargin(top: 34, right: 2),
                          controller: controller.otpController.value,
                          onChanged: (value) {})),
                      Padding(
                          padding: getPadding(top: 9),
                          child: Text("msg_please_enter_valid2".tr,
                              style: CustomTextStyles.bodyMediumRed600_1)),
                      CustomElevatedButton(
                          text: "lbl_send".tr,
                          margin: getMargin(top: 43),
                          onTap: () {
                            onTapSend();
                          }),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(top: 18),
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "msg_don_t_receive_code2".tr,
                                        style: theme.textTheme.bodyLarge),
                                    TextSpan(
                                        text: "lbl_resend".tr,
                                        style: theme.textTheme.titleMedium)
                                  ]),
                                  textAlign: TextAlign.left))),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(top: 14, bottom: 5),
                              child: Text("lbl_00_29".tr,
                                  style: CustomTextStyles
                                      .bodyLargeErrorContainer)))
                    ]))));
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
