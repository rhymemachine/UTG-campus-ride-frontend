import 'package:bustrackingapp/widgets/widget_utils.dart';

import 'controller/sign_up_controller.dart';
import 'package:bustrackingapp/core/app_export.dart';
import 'package:bustrackingapp/core/utils/validation_functions.dart';
import 'package:bustrackingapp/widgets/custom_checkbox_button.dart';
import 'package:bustrackingapp/widgets/custom_elevated_button.dart';
import 'package:bustrackingapp/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SignUpScreen extends GetWidget<SignUpController> {
  SignUpScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
      appBar: getNoneAppBar(),
        // resizeToAvoidBottomInset: true,
        backgroundColor: appTheme.whiteA700,
        bottomNavigationBar: Container(
          height: getVerticalSize(64),
          // color: Colors.green,
          child: Align(
              alignment: Alignment.topCenter,
              child: Padding(
                  padding: getPadding(top: 0, bottom: 0),
                  child: GestureDetector(
                    onTap: (){
                      Get.back();
                    },
                    child: RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: "msg_do_have_an_account2".tr,
                              style: theme.textTheme.bodyLarge),
                          TextSpan(
                              text: "lbl_log_in".tr,
                              style: theme.textTheme.titleMedium)
                        ]),
                        textAlign: TextAlign.left),
                  ))),
        ),

        body: Form(
            key: _formKey,
            child: Container(
                width: double.maxFinite,
                padding:
                    getPadding(left: 16, top: 33, right: 16, bottom: 33),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("lbl_sign_up".tr,
                        style: theme.textTheme.displaySmall),
                    Padding(
                        padding: getPadding(top: 16),
                        child: Text("msg_please_sign_up_to".tr,
                            style: theme.textTheme.bodyLarge)),

                    Expanded(
                      flex: 1,
                      child: ListView(
                        shrinkWrap: true,
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          // mainAxisAlignment: MainAxisAlignment.start,
                          children: [

                            CustomTextFormField(
                                controller: controller.firstNameController,
                                margin: getMargin(top: 36),
                                hintText: "lbl_first_name".tr,
                                hintStyle:
                                    CustomTextStyles.bodyLargeErrorContainer,
                                textStyle: theme.textTheme.bodyLarge!,
                                validator: (value) {
                                  if(controller.firstNameController.text.isEmpty){
                                    return "Please enter valid text";
                                  }
                                  // if (!isText(value)) {
                                  //   return "Please enter valid text";
                                  // }
                                  return null;
                                }),
                            CustomTextFormField(
                                controller: controller.emailController,
                                margin: getMargin(top: 16),
                                hintText: "lbl_email_address".tr,
                                hintStyle:
                                    CustomTextStyles.bodyLargeErrorContainer,
                                textInputType: TextInputType.emailAddress,
                                validator: (value) {
                                  if (value == null ||
                                      (!isValidEmail(value, isRequired: true))) {
                                    return "Please enter valid email";
                                  }
                                  return null;
                                }),
                            CustomTextFormField(
                                controller: controller.phoneNumberController,
                                margin: getMargin(top: 16),
                                hintText: "lbl_phone_number".tr,
                                hintStyle:
                                    CustomTextStyles.bodyLargeErrorContainer,
                                textInputType: TextInputType.phone,
                                validator: (value) {
                                  if(controller.phoneNumberController.text.isEmpty){
                                    return "Please enter valid phone number";
                                  }
                                  // if (!isValidPhone(value)) {
                                  //   return "Please enter valid phone number";
                                  // }
                                  return null;
                                }),
                            Obx(() => CustomTextFormField(
                                controller: controller.passwordController,
                                margin: getMargin(top: 16),
                                hintText: "lbl_password".tr,
                                hintStyle:
                                    CustomTextStyles.bodyLargeErrorContainer,
                                textInputAction: TextInputAction.done,
                                textInputType: TextInputType.visiblePassword,
                                suffix: InkWell(
                                  overlayColor: MaterialStatePropertyAll(Colors.transparent),
                                    onTap: () {
                                      controller.isShowPassword.value =
                                          !controller.isShowPassword.value;
                                    },
                                    child: Container(
                                        margin: getMargin(
                                            // left: 30,
                                            top: 17,
                                            right: 16,
                                            bottom: 17),
                                        child: CustomImageView(
                                            svgPath: controller
                                                    .isShowPassword.value
                                                ? ImageConstant
                                                    .imgEyePass
                                                : ImageConstant
                                                    .imgCheckmarkErrorcontainer))),
                                suffixConstraints: BoxConstraints(
                                    maxHeight: getVerticalSize(54)),
                                validator: (value) {
                                  // if (value == null ||
                                  //     (!isValidPassword(value,
                                  //         isRequired: true))) {

                                  if (value == null ||
                                      (value.length < 8)) {
                                    return "Please enter valid password";
                                  }
                                  return null;
                                },
                                obscureText: controller.isShowPassword.value,
                                // contentPadding: getPadding(left: 18, top: 18, bottom: 18)
                            )),
                            Obx(() => CustomCheckboxButton(
                                text: "msg_by_continuing_you".tr,
                                isExpandedText: true,
                                value: controller.agreementText.value,
                                margin: getMargin(top: 16, right: 5),
                                onChange: (value) {
                                  controller.agreementText.value = value;
                                })),
                            CustomElevatedButton(
                                text: "lbl_sign_up".tr,
                                margin: getMargin(top: 40),
                                onTap: () {
                                  if(_formKey.currentState!.validate()){
                                    onTapSignup();
                                  }
                                }),
                            Align(
                                alignment: Alignment.center,
                                child: Container(
                                    height: getVerticalSize(24),
                                    width: getHorizontalSize(314),
                                    margin: getMargin(top: 30),
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
                                              CustomButtonStyles.fillWhiteA.copyWith(
                                                  overlayColor: MaterialStatePropertyAll(Colors.transparent)
                                              ),
                                              buttonTextStyle:
                                              theme.textTheme.bodyLarge!,
                                              alignment: Alignment.center)
                                        ]))),
                            Padding(
                                padding: getPadding(top: 30),
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
                                              theme.textTheme.titleMedium))
                                    ])),


                          ]),
                    ),


                  ],
                ))));
  }

  /// Navigates to the homeContainerScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the homeContainerScreen.
  onTapSignup() {
    PrefUtils.setIsLogin(true);
    Get.toNamed(
      AppRoutes.homeContainerScreen,
    );

    // Get.toNamed(
    //   AppRoutes.homeContainerScreen,
    // );
  }
}
