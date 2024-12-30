import 'package:bustrackingapp/widgets/widget_utils.dart';

import 'controller/my_cards_controller.dart';
import 'package:bustrackingapp/core/app_export.dart';
import 'package:bustrackingapp/widgets/app_bar/appbar_image.dart';
import 'package:bustrackingapp/widgets/app_bar/appbar_title.dart';
import 'package:bustrackingapp/widgets/app_bar/custom_app_bar.dart';
import 'package:bustrackingapp/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class MyCardsScreen extends GetWidget<MyCardsController> {
  const MyCardsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: appTheme.whiteA700,
        body: SizedBox(
            width: double.maxFinite,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                      padding: getPadding(top: 18, bottom: 18),
                      decoration: AppDecoration.outlineOnPrimaryContainer,
                      child: CustomAppBar(
                          leadingWidth: getHorizontalSize(36),
                          leading: AppbarImage(
                              svgPath: ImageConstant.imgArrowleft,
                              margin:
                                  getMargin(left: 16, top: 1, bottom: 5),
                              onTap: () {
                                onTapArrowleftone();
                              }),
                          title: AppbarTitle(
                              text: "lbl_my_cards".tr,
                              margin: getMargin(left: 16)))),
                  Expanded(
                    child: Container(
                        padding: getPadding(
                            left: 16, top: 8, right: 16, bottom: 24),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              customCardTabView(icon: ImageConstant.imgPayPal,text: "lbl_paypal".tr),
                              // CustomTextFormField(
                              //     controller:
                              //         controller.paypalvalueoneController,
                              //     hintText: "lbl_paypal".tr,
                              //     hintStyle: CustomTextStyles
                              //         .titleMediumSFProDisplay,
                              //     prefix: Container(
                              //         margin: getMargin(
                              //             left: 26,
                              //             top: 26,
                              //             right: 18,
                              //             bottom: 26),
                              //         child: CustomImageView(
                              //             svgPath:
                              //                 ImageConstant.imgIcPaypal)),
                              //     prefixConstraints: BoxConstraints(
                              //         maxHeight: getVerticalSize(76)),
                              //     contentPadding: getPadding(
                              //         top: 27, right: 30, bottom: 27)),

                              customCardTabView(icon: ImageConstant.imgVisa,text: "lbl_visa".tr),

                              // CustomTextFormField(
                              //     controller:
                              //         controller.visavalueoneController,
                              //     margin: getMargin(top: 16),
                              //     hintText: "lbl_visa".tr,
                              //     hintStyle: CustomTextStyles
                              //         .titleMediumSFProDisplay,
                              //     prefix: Container(
                              //         margin: getMargin(
                              //             left: 26,
                              //             top: 26,
                              //             right: 18,
                              //             bottom: 26),
                              //         child: CustomImageView(
                              //             svgPath:
                              //                 ImageConstant.imgBluetooth)),
                              //     prefixConstraints: BoxConstraints(
                              //         maxHeight: getVerticalSize(76)),
                              //     contentPadding: getPadding(
                              //         top: 27, right: 30, bottom: 27)),

                              customCardTabView(icon: ImageConstant.imgApple,text: "lbl_apple_pay".tr),

                              // CustomTextFormField(
                              //     controller:
                              //         controller.applepayoneController,
                              //     margin: getMargin(top: 16),
                              //     hintText: "lbl_apple_pay".tr,
                              //     hintStyle: CustomTextStyles
                              //         .titleMediumSFProDisplay,
                              //     textInputAction: TextInputAction.done,
                              //     prefix: Container(
                              //         margin: getMargin(
                              //             left: 26,
                              //             top: 26,
                              //             right: 18,
                              //             bottom: 26),
                              //         child: CustomImageView(
                              //             svgPath: ImageConstant.imgFire)),
                              //     prefixConstraints: BoxConstraints(
                              //         maxHeight: getVerticalSize(76)),
                              //     contentPadding: getPadding(
                              //         top: 27, right: 30, bottom: 27)),

                              customCardTabView(icon: ImageConstant.imgGooglePay,text: "lbl_google_pay".tr),

                              // Container(
                              //     margin: getMargin(top: 16, bottom: 5),
                              //     padding: getPadding(all: 20),
                              //     decoration: AppDecoration.fillGray.copyWith(
                              //         borderRadius:
                              //             BorderRadiusStyle.roundedBorder16),
                              //     child: Row(children: [
                              //       Container(
                              //           height: getSize(36),
                              //           width: getSize(36),
                              //           padding: getPadding(all: 6),
                              //           decoration: AppDecoration.white
                              //               .copyWith(
                              //                   borderRadius:
                              //                       BorderRadiusStyle
                              //                           .roundedBorder16),
                              //           child: CustomImageView(
                              //               svgPath: ImageConstant.imgGoogle,
                              //               height: getSize(24),
                              //               width: getSize(24),
                              //               alignment: Alignment.center)),
                              //       Padding(
                              //           padding: getPadding(
                              //               left: 12, top: 9, bottom: 4),
                              //           child: Text("lbl_google_pay".tr,
                              //               style: CustomTextStyles
                              //                   .titleMediumSFProDisplay))
                              //     ]))
                            ])),
                  )
                ])),
        bottomNavigationBar: CustomElevatedButton(
            text: "lbl_add_card".tr,
            margin: getMargin(left: 16, right: 16, bottom: 40),
            onTap: () {
              onTapAddcard();
            }));
  }

  /// Navigates to the addACardDefualtScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the addACardDefualtScreen.
  onTapAddcard() {
    Get.toNamed(
      AppRoutes.addACardDefualtScreen,
    );
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] package to
  /// navigate to the previous screen in the navigation stack.
  onTapArrowleftone() {
    Get.back();
  }
}
