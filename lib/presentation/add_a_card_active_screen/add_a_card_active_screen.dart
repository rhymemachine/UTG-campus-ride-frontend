import 'package:flutter/material.dart';
import 'package:bustrackingapp/core/app_export.dart';
import 'package:bustrackingapp/widgets/app_bar/appbar_image.dart';
import 'package:bustrackingapp/widgets/app_bar/appbar_title.dart';
import 'package:bustrackingapp/widgets/app_bar/custom_app_bar.dart';
import 'package:bustrackingapp/widgets/custom_elevated_button.dart';
import 'package:bustrackingapp/widgets/custom_text_form_field.dart';

import 'controller/add_a_card_active_controller.dart';

class AddACardActiveScreen extends GetWidget<AddACardActiveController> {
  const AddACardActiveScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: appTheme.whiteA700,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          padding: getPadding(top: 19, bottom: 19),
                          decoration: AppDecoration.outlineOnPrimaryContainer,
                          child: CustomAppBar(
                              leadingWidth: getHorizontalSize(36),
                              leading: AppbarImage(
                                  svgPath: ImageConstant.imgArrowleft,
                                  margin:
                                      getMargin(left: 16, top: 4, bottom: 2),
                                  onTap: () {
                                    onTapArrowleftone();
                                  }),
                              title: AppbarTitle(
                                  text: "lbl_add_a_card".tr,
                                  margin: getMargin(left: 16)))),
                      Container(
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
                                              text: "msg_enter_your_card2".tr,
                                              style: theme.textTheme.bodyLarge),
                                          TextSpan(
                                              text: "lbl_c".tr,
                                              style: theme.textTheme.bodyLarge),
                                          TextSpan(
                                              text: "msg_ollect_or_store".tr,
                                              style: theme.textTheme.bodyLarge),
                                          TextSpan(text: " "),
                                          TextSpan(
                                              text: "lbl_learn_more".tr,
                                              style: CustomTextStyles
                                                  .bodyLargePrimary)
                                        ]),
                                        textAlign: TextAlign.center)),
                                CustomTextFormField(
                                    controller:
                                        controller.cardnumberoneController,
                                    margin: getMargin(top: 24),
                                    hintText: "lbl_1240_8740_3654".tr,
                                    hintStyle: theme.textTheme.bodyLarge!),
                                Padding(
                                    padding: getPadding(top: 16),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Expanded(
                                              child: CustomTextFormField(
                                                  controller: controller
                                                      .expirationdateController,
                                                  margin: getMargin(right: 8),
                                                  hintText: "lbl_06_26".tr,
                                                  hintStyle: theme
                                                      .textTheme.bodyLarge!)),
                                          Expanded(
                                              child: CustomTextFormField(
                                                  controller: controller
                                                      .cvvoneController,
                                                  margin: getMargin(left: 8),
                                                  hintText: "lbl_957".tr,
                                                  hintStyle: theme
                                                      .textTheme.bodyLarge!,
                                                  textInputAction:
                                                      TextInputAction.done))
                                        ])),
                                CustomElevatedButton(
                                    text: "lbl_add_card".tr,
                                    margin: getMargin(top: 40, bottom: 5),
                                    onTap: () {
                                      onTapAddcard();
                                    })
                              ]))
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
    Get.toNamed(
      AppRoutes.myCardsScreen,
    );
  }
}
