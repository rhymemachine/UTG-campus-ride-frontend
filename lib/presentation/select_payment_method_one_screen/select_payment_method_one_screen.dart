import 'controller/select_payment_method_one_controller.dart';
import 'package:bustrackingapp/core/app_export.dart';
import 'package:bustrackingapp/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class SelectPaymentMethodOneScreen
    extends GetWidget<SelectPaymentMethodOneController> {
  const SelectPaymentMethodOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.whiteA700,
            body: SizedBox(
                width: double.maxFinite,

                child: Container(),
                // child: Column(
                //     mainAxisAlignment: MainAxisAlignment.start,
                //     children: [
                //       Container(
                //           padding: getPadding(top: 18, bottom: 18),
                //           decoration: AppDecoration.outlineOnPrimaryContainer,
                //           child: CustomAppBar(
                //               leadingWidth: getHorizontalSize(36),
                //               leading: AppbarImage(
                //                   svgPath: ImageConstant.imgArrowleft,
                //                   margin:
                //                       getMargin(left: 16, top: 1, bottom: 5),
                //                   onTap: () {
                //                     onTapArrowleftone();
                //                   }),
                //               title: AppbarTitle(
                //                   text: "msg_select_payment_method".tr,
                //                   margin: getMargin(left: 16)))),
                //       Container(
                //           padding: getPadding(
                //               left: 16, top: 30, right: 16, bottom: 30),
                //           child: Column(
                //               crossAxisAlignment: CrossAxisAlignment.start,
                //               mainAxisAlignment: MainAxisAlignment.start,
                //               children: [
                //                 Text("lbl_payment_method".tr,
                //                     style: CustomTextStyles.titleMediumBold),
                //                 Container(
                //                     margin: getMargin(top: 19),
                //                     padding: getPadding(
                //                         left: 16,
                //                         top: 20,
                //                         right: 16,
                //                         bottom: 20),
                //                     decoration: AppDecoration.fillGray.copyWith(
                //                         borderRadius:
                //                             BorderRadiusStyle.roundedBorder16),
                //                     child: Obx(() => CustomRadioButton(
                //                         width: getHorizontalSize(346),
                //                         text: "lbl_paypal".tr,
                //                         value: "lbl_paypal".tr,
                //                         groupValue: controller.radioGroup.value,
                //                         padding: getPadding(
                //                             left: 12,
                //                             top: 4,
                //                             right: 30,
                //                             bottom: 4),
                //                         isRightCheck: true,
                //                         onChange: (value) {
                //                           controller.radioGroup.value = value;
                //                         }))),
                //                 Container(
                //                     margin: getMargin(top: 16),
                //                     padding: getPadding(
                //                         left: 16,
                //                         top: 20,
                //                         right: 16,
                //                         bottom: 20),
                //                     decoration: AppDecoration.fillGray.copyWith(
                //                         borderRadius:
                //                             BorderRadiusStyle.roundedBorder16),
                //                     child: Obx(() => CustomRadioButton(
                //                         width: getHorizontalSize(350),
                //                         text: "lbl_visa".tr,
                //                         value: "lbl_visa".tr,
                //                         groupValue:
                //                             controller.radioGroup1.value,
                //                         padding: getPadding(
                //                             left: 16,
                //                             top: 6,
                //                             right: 30,
                //                             bottom: 6),
                //                         isRightCheck: true,
                //                         onChange: (value) {
                //                           controller.radioGroup1.value = value;
                //                         }))),
                //                 Container(
                //                     margin: getMargin(top: 16),
                //                     padding: getPadding(
                //                         left: 16,
                //                         top: 20,
                //                         right: 16,
                //                         bottom: 20),
                //                     decoration: AppDecoration.fillGray.copyWith(
                //                         borderRadius:
                //                             BorderRadiusStyle.roundedBorder16),
                //                     child: Obx(() => CustomRadioButton(
                //                         width: getHorizontalSize(346),
                //                         text: "lbl_apple_pay".tr,
                //                         value: "lbl_apple_pay".tr,
                //                         groupValue:
                //                             controller.radioGroup2.value,
                //                         padding: getPadding(
                //                             left: 12,
                //                             top: 4,
                //                             right: 30,
                //                             bottom: 4),
                //                         isRightCheck: true,
                //                         onChange: (value) {
                //                           controller.radioGroup2.value = value;
                //                         }))),
                //                 Container(
                //                     margin: getMargin(top: 16),
                //                     padding: getPadding(
                //                         left: 16,
                //                         top: 20,
                //                         right: 16,
                //                         bottom: 20),
                //                     decoration: AppDecoration.fillGray.copyWith(
                //                         borderRadius:
                //                             BorderRadiusStyle.roundedBorder16),
                //                     child: Obx(() => CustomRadioButton(
                //                         width: getHorizontalSize(346),
                //                         text: "lbl_google_pay".tr,
                //                         value: "lbl_google_pay".tr,
                //                         groupValue:
                //                             controller.radioGroup3.value,
                //                         padding: getPadding(
                //                             left: 12,
                //                             top: 4,
                //                             right: 30,
                //                             bottom: 4),
                //                         isRightCheck: true,
                //                         onChange: (value) {
                //                           controller.radioGroup3.value = value;
                //                         }))),
                //                 Container(
                //                     margin: getMargin(top: 16, bottom: 5),
                //                     padding: getPadding(
                //                         left: 16,
                //                         top: 20,
                //                         right: 16,
                //                         bottom: 20),
                //                     decoration: AppDecoration.fillGray.copyWith(
                //                         borderRadius:
                //                             BorderRadiusStyle.roundedBorder16),
                //                     child: Obx(() => CustomRadioButton(
                //                         width: getHorizontalSize(346),
                //                         text: "lbl_wallet".tr,
                //                         value: "lbl_wallet".tr,
                //                         groupValue:
                //                             controller.radioGroup4.value,
                //                         padding: getPadding(
                //                             left: 12,
                //                             top: 6,
                //                             right: 30,
                //                             bottom: 6),
                //                         isRightCheck: true,
                //                         onChange: (value) {
                //                           controller.radioGroup4.value = value;
                //                         })))
                //               ]))
                //     ])
            ),


            bottomNavigationBar: CustomElevatedButton(
                text: "lbl_confirm_payment".tr,
                margin: getMargin(left: 16, right: 16, bottom: 40),
                onTap: () {
                  onTapConfirmpayment();
                })));
  }

  /// Navigates to the rechargeBalancePopUpScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the rechargeBalancePopUpScreen.
  onTapConfirmpayment() {
    Get.toNamed(
      AppRoutes.rechargeBalancePopUpScreen,
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
