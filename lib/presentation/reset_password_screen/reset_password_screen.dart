import 'package:bustrackingapp/widgets/widget_utils.dart';

import '../password_change_screen/password_change_screen.dart';
import 'controller/reset_password_controller.dart';
import 'package:bustrackingapp/core/app_export.dart';
import 'package:bustrackingapp/widgets/app_bar/appbar_iconbutton.dart';
import 'package:bustrackingapp/widgets/app_bar/custom_app_bar.dart';
import 'package:bustrackingapp/widgets/custom_elevated_button.dart';
import 'package:bustrackingapp/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class ResetPasswordScreen extends GetWidget<ResetPasswordController> {
  const ResetPasswordScreen({Key? key}) : super(key: key);

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
                  Text("lbl_reset_password".tr,
                      style: theme.textTheme.headlineMedium),
                  Padding(
                      padding: getPadding(top: 18),
                      child: Text("msg_check_your_email".tr,
                          style: theme.textTheme.bodyLarge)),
                  Obx(() => CustomTextFormField(
                      controller: controller.checkmarkController,
                      margin: getMargin(top: 34),
                      hintText: "lbl_new_password".tr,
                      hintStyle:
                      CustomTextStyles.bodyLargeErrorContainer,
                      suffix: InkWell(
                        overlayColor: MaterialStatePropertyAll(Colors.transparent),
                          onTap: () {
                            controller.isShowPassword.value =
                                !controller.isShowPassword.value;
                          },
                          child: Container(
                              margin: getMargin(
                                  left: 30, top: 17, right: 16, bottom: 17),
                              child: CustomImageView(
                                  svgPath: controller.isShowPassword.value
                                      ? ImageConstant
                                          .imgEyePass
                                      : ImageConstant
                                          .imgCheckmarkErrorcontainer))),
                      suffixConstraints:
                          BoxConstraints(maxHeight: getVerticalSize(54)),
                      obscureText: controller.isShowPassword.value)),
                  Obx(() => CustomTextFormField(
                      controller: controller.checkmarkoneController,
                      margin: getMargin(top: 24),
                      textInputAction: TextInputAction.done,
                      hintText: "lbl_confirm_password".tr,
                      hintStyle:
                      CustomTextStyles.bodyLargeErrorContainer,
                      suffix: InkWell(
                        overlayColor: MaterialStatePropertyAll(Colors.transparent),
                          onTap: () {
                            controller.isShowPassword1.value =
                                !controller.isShowPassword1.value;
                          },
                          child: Container(
                              margin: getMargin(
                                  left: 30, top: 17, right: 16, bottom: 17),
                              child: CustomImageView(
                                  svgPath: controller.isShowPassword1.value
                                      ? ImageConstant
                                          .imgEyePass
                                      : ImageConstant
                                          .imgCheckmarkErrorcontainer))),
                      suffixConstraints:
                          BoxConstraints(maxHeight: getVerticalSize(54)),
                      obscureText: controller.isShowPassword1.value)),
                  CustomElevatedButton(
                      text: "lbl_reset_password2".tr,
                      margin: getMargin(top: 40, bottom: 5),
                      onTap: () {
                        onTapResetpassword(context);
                      })
                ])));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] package to
  /// navigate to the previous screen in the navigation stack.
  onTapArrowleftone() {
    Get.back();
  }

  /// Navigates to the passwordChangeScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the passwordChangeScreen.
  onTapResetpassword(BuildContext context) {

    showCommonDialog(context: context, widget: PasswordChangeScreen());
    // Get.toNamed(
    //   AppRoutes.passwordChangeScreen,
    // );
  }
}
