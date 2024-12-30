import 'controller/login_error_controller.dart';
import 'package:bustrackingapp/core/app_export.dart';
import 'package:bustrackingapp/core/utils/validation_functions.dart';
import 'package:bustrackingapp/widgets/custom_elevated_button.dart';
import 'package:bustrackingapp/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class LoginErrorScreen extends GetWidget<LoginErrorController> {
  LoginErrorScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: appTheme.whiteA700,
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        getPadding(left: 16, top: 33, right: 16, bottom: 33),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("lbl_login2".tr,
                              style: theme.textTheme.displaySmall),
                          Padding(
                              padding: getPadding(top: 16),
                              child: Text("msg_please_log_in_to".tr,
                                  style: theme.textTheme.bodyLarge)),
                          Padding(
                              padding: getPadding(top: 36),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    CustomTextFormField(
                                        controller: controller.emailController,
                                        hintText: "lbl_email_address".tr,
                                        hintStyle: CustomTextStyles
                                            .bodyLargeErrorContainer,
                                        textInputType:
                                            TextInputType.emailAddress,
                                        validator: (value) {
                                          if (value == null ||
                                              (!isValidEmail(value,
                                                  isRequired: true))) {
                                            return "Please enter valid email";
                                          }
                                          return null;
                                        }),
                                    Padding(
                                        padding: getPadding(top: 10),
                                        child: Text("msg_please_enter_valid".tr,
                                            style: CustomTextStyles
                                                .bodyMediumRed600))
                                  ])),
                          Padding(
                              padding: getPadding(top: 24),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    CustomTextFormField(
                                        controller: controller.emailController1,
                                        hintText: "lbl_password".tr,
                                        hintStyle: CustomTextStyles
                                            .bodyLargeErrorContainer,
                                        textInputAction: TextInputAction.done,
                                        textInputType:
                                            TextInputType.visiblePassword,
                                        validator: (value) {
                                          if (value == null ||
                                              (!isValidPassword(value,
                                                  isRequired: true))) {
                                            return "Please enter valid password";
                                          }
                                          return null;
                                        },
                                        obscureText: true),
                                    Padding(
                                        padding: getPadding(top: 10),
                                        child: Text("msg_please_enter_valid".tr,
                                            style: CustomTextStyles
                                                .bodyMediumRed600))
                                  ])),
                          Align(
                              alignment: Alignment.centerRight,
                              child: GestureDetector(
                                  onTap: () {
                                    onTapTxtForgotpassword();
                                  },
                                  child: Padding(
                                      padding: getPadding(top: 20),
                                      child: Text("msg_forgot_password".tr,
                                          style: theme.textTheme.bodyLarge)))),
                          CustomElevatedButton(
                              text: "lbl_log_in".tr,
                              margin: getMargin(top: 42),
                              onTap: () {
                                onTapLogin();
                              }),
                          Align(
                              alignment: Alignment.center,
                              child: Container(
                                  height: getVerticalSize(24),
                                  width: getHorizontalSize(314),
                                  margin: getMargin(top: 32),
                                  child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Align(
                                            alignment: Alignment.topCenter,
                                            child: Padding(
                                                padding: getPadding(top: 11),
                                                child: SizedBox(
                                                    width:
                                                        getHorizontalSize(314),
                                                    child: Divider()))),
                                        CustomElevatedButton(
                                            height: getVerticalSize(24),
                                            width: getHorizontalSize(131),
                                            text: "msg_or_continue_with".tr,
                                            buttonStyle:
                                                CustomButtonStyles.fillWhiteA,
                                            buttonTextStyle:
                                                theme.textTheme.bodyLarge!,
                                            alignment: Alignment.center)
                                      ]))),
                          Padding(
                              padding: getPadding(top: 32),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                        child: CustomElevatedButton(
                                            height: getVerticalSize(54),
                                            text: "lbl_google".tr,
                                            margin: getMargin(right: 8),
                                            leftIcon: Container(
                                                margin: getMargin(right: 12),
                                                child: CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgIcGoogleLogin)),
                                            buttonStyle:
                                                CustomButtonStyles.fillGray,
                                            buttonTextStyle:
                                                theme.textTheme.titleMedium!)),
                                    Expanded(
                                        child: CustomElevatedButton(
                                            height: getVerticalSize(54),
                                            text: "lbl_facebook".tr,
                                            margin: getMargin(left: 8),
                                            leftIcon: Container(
                                                margin: getMargin(right: 12),
                                                child: CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgFacebook)),
                                            buttonStyle:
                                                CustomButtonStyles.fillGray,
                                            buttonTextStyle:
                                                theme.textTheme.titleMedium!))
                                  ])),
                          Spacer(),
                          Align(
                              alignment: Alignment.center,
                              child: Padding(
                                  padding: getPadding(bottom: 8),
                                  child: RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text:
                                                "msg_don_t_have_an_account2".tr,
                                            style: theme.textTheme.bodyLarge),
                                        TextSpan(
                                            text: "lbl_sign_up".tr,
                                            style: theme.textTheme.titleMedium)
                                      ]),
                                      textAlign: TextAlign.left)))
                        ])))));
  }

  /// Navigates to the loginForgotPasswordScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the loginForgotPasswordScreen.
  onTapTxtForgotpassword() {
    Get.toNamed(
      AppRoutes.loginForgotPasswordScreen,
    );
  }

  /// Navigates to the homeContainerScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the homeContainerScreen.
  onTapLogin() {
    Get.toNamed(
      AppRoutes.homeContainerScreen,
    );
  }
}
