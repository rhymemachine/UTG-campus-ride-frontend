import 'controller/add_a_card_defualt_controller.dart';
import 'package:bustrackingapp/core/app_export.dart';
import 'package:bustrackingapp/core/utils/validation_functions.dart';
import 'package:bustrackingapp/widgets/app_bar/appbar_image.dart';
import 'package:bustrackingapp/widgets/app_bar/appbar_title.dart';
import 'package:bustrackingapp/widgets/app_bar/custom_app_bar.dart';
import 'package:bustrackingapp/widgets/custom_elevated_button.dart';
import 'package:bustrackingapp/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class AddACardDefualtScreen extends GetWidget<AddACardDefualtController> {
  AddACardDefualtScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: appTheme.whiteA700,
        body: Form(
            key: _formKey,
            child: SizedBox(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          padding: getPadding(top: 19, bottom: 19),
                          decoration:
                              AppDecoration.outlineOnPrimaryContainer,
                          child: CustomAppBar(
                              leadingWidth: getHorizontalSize(36),
                              leading: AppbarImage(
                                  svgPath: ImageConstant.imgArrowleft,
                                  margin: getMargin(
                                      left: 16, top: 4, bottom: 2),
                                  onTap: () {
                                    onTapArrowleftone();
                                  }),
                              title: AppbarTitle(
                                  text: "lbl_add_a_card".tr,
                                  margin: getMargin(left: 16)))),
                      Expanded(
                        child: Container(
                            padding: getPadding(
                                left: 16, top: 25, right: 16, bottom: 25),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                      width: getHorizontalSize(339),
                                      margin: getMargin(left: 21, right: 20),
                                      child: RichText(
                                          text: TextSpan(children: [
                                            TextSpan(
                                                text:
                                                    "msg_enter_your_card2".tr,
                                                style: theme
                                                    .textTheme.bodyLarge),
                                            TextSpan(
                                                text: "lbl_c".tr,
                                                style: theme
                                                    .textTheme.bodyLarge),
                                            TextSpan(
                                                text:
                                                    "msg_ollect_or_store".tr,
                                                style: theme
                                                    .textTheme.bodyLarge),
                                            TextSpan(text: " "),
                                            TextSpan(
                                                text: "lbl_learn_more".tr,
                                                style: CustomTextStyles
                                                    .bodyLargePrimary)
                                          ]),
                                          textAlign: TextAlign.center)),
                                  CustomTextFormField(
                                      controller:
                                          controller.cardNumberController,
                                      margin: getMargin(top: 24),
                                      hintText: "lbl_card_number".tr,
                                      hintStyle: CustomTextStyles
                                          .bodyLargeErrorContainer,
                                      textInputType: TextInputType.number,
                                      validator: (value) {
                                        if (!isNumeric(value)) {
                                          return "Please enter valid number";
                                        }
                                        return null;
                                      }),
                                  Padding(
                                      padding: getPadding(top: 16),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Expanded(
                                                child: CustomTextFormField(
                                                    controller: controller
                                                        .dateController,
                                                    margin:
                                                        getMargin(right: 8),
                                                    hintText:
                                                        "lbl_exp_date".tr,
                                                    hintStyle: CustomTextStyles
                                                        .bodyLargeErrorContainer)),
                                            Expanded(
                                                child: CustomTextFormField(
                                                    controller: controller
                                                        .cvvController,
                                                    margin:
                                                        getMargin(left: 8),
                                                    hintText: "lbl_cvv".tr,
                                                    textInputType: TextInputType.number,
                                                    hintStyle: CustomTextStyles
                                                        .bodyLargeErrorContainer,
                                                    textInputAction:
                                                        TextInputAction.done))
                                          ])),
                                  CustomElevatedButton(
                                      text: "lbl_add_card".tr,
                                      margin: getMargin(top: 40, bottom: 5),
                                      onTap: () {
                                        onTapAddcard();
                                      })
                                ])),
                      )
                    ]))));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] package to
  /// navigate to the previous screen in the navigation stack.
  onTapArrowleftone() {
    Get.back();
  }

  /// Navigates to the myCardsScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the myCardsScreen.
  onTapAddcard() {
    Get.back();
    // Get.toNamed(
    //   AppRoutes.myCardsScreen,
    // );
  }
}
