import 'package:bustrackingapp/presentation/package_booking_pop_up_screen/package_booking_pop_up_screen.dart';
import 'package:bustrackingapp/presentation/recharge_balance_pop_up_screen/recharge_balance_pop_up_screen.dart';
import 'package:bustrackingapp/widgets/widget_utils.dart';

import 'controller/select_payment_method_controller.dart';
import 'package:bustrackingapp/core/app_export.dart';
import 'package:bustrackingapp/widgets/app_bar/appbar_image.dart';
import 'package:bustrackingapp/widgets/app_bar/appbar_title.dart';
import 'package:bustrackingapp/widgets/app_bar/custom_app_bar.dart';
import 'package:bustrackingapp/widgets/custom_elevated_button.dart';
import 'package:bustrackingapp/widgets/custom_radio_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SelectPaymentMethodScreen
    extends StatelessWidget {
  bool? isRechargeScreen;
   SelectPaymentMethodScreen({Key? key,this.isRechargeScreen}) : super(key: key);

  SelectPaymentMethodController controller = Get.find<SelectPaymentMethodController>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
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
                              text: "msg_select_payment_method".tr,
                              margin: getMargin(left: 16)))),
                  Expanded(
                    flex: 1,
                    child: Container(
                        padding: getPadding(
                            left: 16, top: 30, right: 16, bottom: 30),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("lbl_payment_method".tr,
                                  style: CustomTextStyles.titleMediumBold),

                              Container(width: double.infinity,
                                  margin: getMargin(top: 19),
                                  padding: getPadding(
                                      left: 0,
                                      top: 20,
                                      right: 0,
                                      bottom: 20),
                                  decoration: AppDecoration.fillGray.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder16),
                                  child: Obx(() => CustomRadioButton(
                                      // width: getHorizontalSize(346),
                                      text: "lbl_paypal".tr,
                                      value: 0,
                                      groupValue: controller.selectedMethod.value,
                                      padding: getPadding(
                                          left: 20,
                                          top: 0,
                                          right: 16,
                                          bottom: 0),
                                      isRightCheck: true,
                                      icon: ImageConstant.imgPayPal,
                                      onChange: (value) {
                                        controller.selectedMethod.value = value;
                                      })
                                  )),

                              Container(
                                  margin: getMargin(top: 16),
                                  padding: getPadding(
                                      left: 0,
                                      top: 20,
                                      right: 0,
                                      bottom: 20),
                                  decoration: AppDecoration.fillGray.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder16),
                                  child: Obx(() => CustomRadioButton(
                                      // width: getHorizontalSize(350),
                                      text: "lbl_visa".tr,
                                      value: 1,
                                      icon: ImageConstant.imgVisa,
                                      groupValue:
                                          controller.selectedMethod.value,
                                      padding: getPadding(
                                          left: 20,
                                          top: 0,
                                          right: 16,
                                          bottom: 0),
                                      isRightCheck: true,
                                      onChange: (value) {
                                        controller.selectedMethod.value = value;
                                      }))),
                              Container(
                                  margin: getMargin(top: 16),
                                  padding: getPadding(
                                      left: 0,
                                      top: 20,
                                      right: 0,
                                      bottom: 20),
                                  decoration: AppDecoration.fillGray.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder16),
                                  child: Obx(() => CustomRadioButton(
                                      // width: getHorizontalSize(346),
                                      text: "lbl_apple_pay".tr,
                                      value: 2,
                                      icon: ImageConstant.imgApple,
                                      groupValue:
                                          controller.selectedMethod.value,
                                      padding: getPadding(
                                          left: 20,
                                          top: 0,
                                          right: 16,
                                          bottom: 0),
                                      isRightCheck: true,
                                      onChange: (value) {
                                        controller.selectedMethod.value = value;
                                      }))),
                              Container(
                                  margin: getMargin(top: 16),
                                  padding: getPadding(
                                      left: 0,
                                      top: 20,
                                      right: 0,
                                      bottom: 20),
                                  decoration: AppDecoration.fillGray.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder16),
                                  child: Obx(() => CustomRadioButton(
                                      // width: getHorizontalSize(346),
                                      text: "lbl_google_pay".tr,
                                      value: 3,
                                      icon: ImageConstant.imgGooglePay,
                                      groupValue:
                                          controller.selectedMethod.value,
                                      padding: getPadding(
                                          left: 20,
                                          top: 0,
                                          right: 16,
                                          bottom: 0),
                                      isRightCheck: true,
                                      onChange: (value) {
                                        controller.selectedMethod.value = value;
                                      }))),
                              Container(
                                  margin: getMargin(top: 16, bottom: 5),
                                  padding: getPadding(
                                      left: 0,
                                      top: 20,
                                      right: 0,
                                      bottom: 20),
                                  decoration: AppDecoration.fillGray.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder16),
                                  child: Obx(() => CustomRadioButton(
                                      // width: getHorizontalSize(346),
                                      text: "lbl_wallet".tr,
                                      value: 4,
                                      icon: ImageConstant.imgWallet,
                                      groupValue:
                                          controller.selectedMethod.value,
                                      padding: getPadding(
                                          left: 20,
                                          top: 0,
                                          right: 16,
                                          bottom: 0),
                                      isRightCheck: true,
                                      onChange: (value) {
                                        controller.selectedMethod.value = value;
                                      })))
                            ])),
                  )

                ])),
        bottomNavigationBar: Builder(

          builder: (context) {

            if(isRechargeScreen ?? false){
              return CustomElevatedButton(
                  text: "lbl_confirm_payment".tr,
                  margin: getMargin(left: 16, right: 16, bottom: 40),
                  onTap: () {
                    onTapConfirmpayment(context);
                  });
            } else {
              return CustomElevatedButton(
                  text: "lbl_pay_now".tr,
                  margin: getMargin(left: 16, right: 16, bottom: 40),
                  onTap: () {
                    onTapPaynow(context);
                  });
            }


          }
        ));
  }

  /// Navigates to the packageBookingPopUpScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the packageBookingPopUpScreen.
  onTapPaynow(BuildContext context) {

    showCommonDialog(context: context, widget: PackageBookingPopUpScreen());
    // Get.toNamed(
    //   AppRoutes.packageBookingPopUpScreen,
    // );
  }

  onTapConfirmpayment(BuildContext context) {


    showCommonDialog(context: context, widget: RechargeBalancePopUpScreen());

    // Get.toNamed(
    //   AppRoutes.rechargeBalancePopUpScreen,
    // );
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] package to
  /// navigate to the previous screen in the navigation stack.
  onTapArrowleftone() {
    Get.back();
  }
}
