import '../buy_package_screen/widgets/buy_package_item_widget.dart';
import '../select_payment_method_screen/select_payment_method_screen.dart';
import 'controller/buy_package_controller.dart';
import 'models/buy_package_item_model.dart';
import 'package:bustrackingapp/core/app_export.dart';
import 'package:bustrackingapp/widgets/app_bar/appbar_image.dart';
import 'package:bustrackingapp/widgets/app_bar/appbar_title.dart';
import 'package:bustrackingapp/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class BuyPackageScreen extends GetWidget<BuyPackageController> {
  const BuyPackageScreen({Key? key}) : super(key: key);

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
                              text: "lbl_buy_package".tr,
                              margin: getMargin(left: 16)))),
                  Expanded(
                      child: Padding(
                          padding: getPadding(left: 16, top: 24, right: 16),
                          child: Obx(() => ListView.separated(
                            padding: EdgeInsets.zero,
                              physics: BouncingScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(
                                    height: getVerticalSize(16));
                              },
                              itemCount: controller.buyPackageModelObj.value
                                  .buyPackageItemList.value.length,
                              itemBuilder: (context, index) {
                                BuyPackageItemModel model = controller
                                    .buyPackageModelObj
                                    .value
                                    .buyPackageItemList
                                    .value[index];
                                return BuyPackageItemWidget(model,
                                    onTapBuy: () {
                                  onTapBuy();
                                });
                              }))))
                ])));
  }

  /// Navigates to the selectPaymentMethodScreen when the action is triggered.
  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the selectPaymentMethodScreen.
  onTapBuy() {
    Get.to(SelectPaymentMethodScreen(isRechargeScreen: false,));
    // Get.toNamed(AppRoutes.selectPaymentMethodScreen,arguments: false);
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] package to
  /// navigate to the previous screen in the navigation stack.
  onTapArrowleftone() {
    Get.back();
  }
}
