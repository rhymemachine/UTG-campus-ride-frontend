import 'controller/login_forgot_password_controller.dart';
import 'package:bustrackingapp/core/app_export.dart';
import 'package:bustrackingapp/core/utils/validation_functions.dart';
import 'package:bustrackingapp/widgets/app_bar/appbar_iconbutton.dart';
import 'package:bustrackingapp/widgets/app_bar/custom_app_bar.dart';
import 'package:bustrackingapp/widgets/custom_elevated_button.dart';
import 'package:bustrackingapp/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class LoginForgotPasswordScreen
    extends GetWidget<LoginForgotPasswordController> {
  LoginForgotPasswordScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
        body: Form(
            key: _formKey,
            child: Container(
                width: double.maxFinite,
                padding:
                    getPadding(left: 16, top: 23, right: 16, bottom: 23),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("lbl_forgot_password".tr,
                          style: theme.textTheme.headlineMedium),
                      Padding(
                          padding: getPadding(top: 15),
                          child: Text("msg_enter_your_email".tr,
                              style: theme.textTheme.bodyLarge)),
                      CustomTextFormField(
                          controller: controller.emailController,
                          margin: getMargin(top: 34),
                          hintText: "lbl_email_address".tr,
                          hintStyle:
                              CustomTextStyles.bodyLargeErrorContainer,
                          textInputAction: TextInputAction.done,
                          textInputType: TextInputType.emailAddress,
                          validator: (value) {
                            if (value == null ||
                                (!isValidEmail(value, isRequired: true))) {
                              return "Please enter valid email";
                            }
                            return null;
                          }),
                      CustomElevatedButton(
                          text: "lbl_send".tr,
                          margin: getMargin(top: 40, bottom: 5),
                          onTap: () {

                            if(_formKey.currentState!.validate()){
                              onTapSend();
                            }

                          })
                    ]))));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] package to
  /// navigate to the previous screen in the navigation stack.
  onTapArrowleftone() {
    Get.back();
  }

  /// Navigates to the verificationScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the verificationScreen.
  onTapSend() {
    Get.toNamed(
      AppRoutes.verificationScreen,
    );
  }
}
