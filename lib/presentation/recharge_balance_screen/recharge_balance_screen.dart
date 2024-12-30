import 'package:bustrackingapp/presentation/select_payment_method_screen/select_payment_method_screen.dart';

import '../recharge_balance_screen/widgets/suggestion_item_widget.dart';
import 'controller/recharge_balance_controller.dart';
import 'models/suggestion_item_model.dart';
import 'package:bustrackingapp/core/app_export.dart';
import 'package:bustrackingapp/widgets/app_bar/appbar_image.dart';
import 'package:bustrackingapp/widgets/app_bar/appbar_title.dart';
import 'package:bustrackingapp/widgets/app_bar/custom_app_bar.dart';
import 'package:bustrackingapp/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class RechargeBalanceScreen extends GetWidget<RechargeBalanceController> {
  const RechargeBalanceScreen({Key? key}) : super(key: key);

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
                              text: "msg_recharge_balance".tr,
                              margin: getMargin(left: 16)))),
                  Expanded(
                    flex: 1,
                    child: Container(
                        padding: getPadding(
                            left: 16, top: 24, right: 16, bottom: 24),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  height: getVerticalSize(130),
                                  width: double.infinity,
                                  decoration: AppDecoration.fillBlueGray
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder16),
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Text("lbl_your_balance".tr,
                                                style: CustomTextStyles
                                                    .bodyLargeWhiteA700),
                                            Padding(
                                                padding: getPadding(top: 14),
                                                child: RichText(
                                                    text: TextSpan(children: [
                                                      TextSpan(
                                                          text: "lbl_1000_00"
                                                              .tr,
                                                          style: CustomTextStyles
                                                              .headlineMediumWhiteA700_1),
                                                      TextSpan(
                                                          text: "lbl_bdt".tr,
                                                          style: CustomTextStyles
                                                              .bodyLargeWhiteA700_1)
                                                    ]),
                                                    textAlign:
                                                        TextAlign.left))
                                          ]),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Align(
                                            alignment: Alignment.topLeft,

                                            child: CustomImageView(
                                              svgPath: ImageConstant.image2,
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.bottomRight,
                                            child: CustomImageView(
                                              svgPath: ImageConstant.image1,
                                            ),
                                          )
                                        ],)
                                    ],
                                  )),
                              Padding(
                                  padding: getPadding(left: 10, top: 37),
                                  child: Text("lbl_recharge_amount".tr,
                                      style: theme.textTheme.titleMedium)),
                              Padding(
                                  padding: getPadding(left: 10, top: 13),
                                  child: Text("msg_how_much_would_you".tr,
                                      style: CustomTextStyles
                                          .bodyMediumGray50014)),
                              Container(
                                height: getVerticalSize(129),
                                  width: double.infinity,
                                  margin: getMargin(top: 25),
                                  alignment: Alignment.center,
                                  // padding: getPadding(
                                  //     left: 122,
                                  //     top: 45,
                                  //     right: 122,
                                  //     bottom: 45),
                                  decoration: AppDecoration.fillGray.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder16),
                                  child: Obx(() => Text(controller.selectedAmount.value,
                                      style: theme.textTheme.displaySmall))),
                              Padding(
                                  padding: getPadding(
                                      left: 10, top: 24, bottom: 5),
                                  child: Obx(() => Wrap(
                                      runSpacing: getVerticalSize(16.04),
                                      spacing: getHorizontalSize(16.04),
                                      children: List<Widget>.generate(
                                          controller
                                              .rechargeBalanceModelObj
                                              .value
                                              .suggestionItemList
                                              .value
                                              .length, (index) {
                                        SuggestionItemModel model = controller
                                            .rechargeBalanceModelObj
                                            .value
                                            .suggestionItemList
                                            .value[index];
                                        return SuggestionItemWidget(model,index: index,);
                                      }))))
                            ])),
                  )
                ])),
        bottomNavigationBar: CustomElevatedButton(
            text: "lbl_continue".tr,
            margin: getMargin(left: 16, right: 16, bottom: 33),
            onTap: () {
              onTapContinue();
            }));
  }

  /// Navigates to the selectPaymentMethodOneScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the selectPaymentMethodOneScreen.
  onTapContinue() {
    Get.to(SelectPaymentMethodScreen(isRechargeScreen: true,));
    // Get.toNamed(
    //   AppRoutes.selectPaymentMethodScreen,
    //   arguments: true
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
