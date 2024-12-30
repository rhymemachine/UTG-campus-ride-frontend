// ignore_for_file: must_be_immutable

import '../home_container_screen/controller/home_container_controller.dart';
import 'controller/wallet_controller.dart';
import 'models/wallet_model.dart';
import 'package:bustrackingapp/core/app_export.dart';
import 'package:flutter/material.dart';

class WalletPage extends StatelessWidget {
  WalletPage({Key? key})
      : super(
          key: key,
        );

  WalletController controller = Get.put(WalletController(WalletModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return WillPopScope(
      onWillPop: () async {

        HomeContainerController homeContainerController = Get.put(HomeContainerController());

        homeContainerController.selectedIndex.value = 0;

        return false;
      },
      child: SafeArea(
        child: Scaffold(
          backgroundColor: appTheme.whiteA700,
          body: Container(
            width: double.maxFinite,
            decoration: AppDecoration.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: double.maxFinite,
                  padding: getPadding(
                    left: 16,
                    top: 19,
                    right: 16,
                    bottom: 19,
                  ),
                  decoration: AppDecoration.outlineOnPrimaryContainer,
                  child: Text(
                    "lbl_wallet".tr,
                    style: theme.textTheme.headlineSmall,
                  ),
                ),
                Expanded(child: Column(
                  children: [
                    Container(
                      margin: getMargin(
                        left: 16,
                        top: 24,
                        right: 16,
                      ),
                      decoration: AppDecoration.fillBlueGray.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder16,
                      ),
                      child: Container(
                        height: getVerticalSize(130),
                        width: double.infinity,
                        padding: getPadding(
                          left: 0,
                          top: 0,
                          right: 0,
                          bottom: 0,
                        ),
                        // decoration: BoxDecoration(
                        //   image: DecorationImage(
                        //     image: fs.Svg(
                        //       ImageConstant.imgText,
                        //     ),
                        //     fit: BoxFit.cover,
                        //   ),
                        // ),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "lbl_your_balance".tr,
                                  style: CustomTextStyles.bodyLargeWhiteA700,
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 14,
                                  ),
                                  child: RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "lbl_1000_00".tr,
                                          style:
                                          CustomTextStyles.headlineMediumWhiteA700_1,
                                        ),
                                        TextSpan(
                                          text: "lbl_bdt".tr,
                                          style: CustomTextStyles.bodyLargeWhiteA700_1,
                                        ),
                                      ],
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ],
                            ),
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
                        ),
                      ),
                    ),


                    GestureDetector(
                      onTap: (){
                        onTapBuyPackage();
                      },
                      child: Container(
                        margin: getMargin(
                          left: 16,
                          top: 24,
                          right: 16,
                        ),
                        padding: getPadding(
                          all: 16,
                        ),
                        decoration: AppDecoration.fillGray.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder12,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            CustomImageView(
                              svgPath: ImageConstant.imgVolume,
                              height: getSize(24),
                              width: getSize(24),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 16,
                                top: 3,
                                bottom: 2,
                              ),
                              child: Text(
                                "lbl_buy_package".tr,
                                style: theme.textTheme.bodyLarge,
                              ),
                            ),
                            Spacer(),
                            CustomImageView(
                              svgPath: ImageConstant.imgArrowright,
                              height: getSize(24),
                              width: getSize(24),
                            ),
                          ],
                        ),
                      ),
                    ),

                    GestureDetector(
                      onTap: (){
                        onTapRecharge();
                      },
                      child: Container(
                        margin: getMargin(
                          left: 16,
                          top: 16,
                          right: 16,
                        ),
                        padding: getPadding(
                          all: 16,
                        ),
                        decoration: AppDecoration.fillGray.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder12,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            CustomImageView(
                              svgPath: ImageConstant.imgShareBlack900,
                              height: getSize(24),
                              width: getSize(24),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 16,
                                top: 3,
                                bottom: 2,
                              ),
                              child: Text(
                                "msg_recharge_balance".tr,
                                style: theme.textTheme.bodyLarge,
                              ),
                            ),
                            Spacer(),
                            CustomImageView(
                              svgPath: ImageConstant.imgArrowright,
                              height: getSize(24),
                              width: getSize(24),
                            ),
                          ],
                        ),
                      ),
                    ),


                    GestureDetector(
                      onTap: () {
                        onTapRefund();
                      },
                      child: Container(
                        margin: getMargin(
                          left: 16,
                          top: 16,
                          right: 16,
                          bottom: 5,
                        ),
                        padding: getPadding(
                          all: 16,
                        ),
                        decoration: AppDecoration.fillGray.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder12,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            CustomImageView(
                              svgPath: ImageConstant.imgRefresh,
                              height: getSize(24),
                              width: getSize(24),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 16,
                                top: 2,
                                bottom: 3,
                              ),
                              child: Text(
                                "lbl_refund".tr,
                                style: theme.textTheme.bodyLarge,
                              ),
                            ),
                            Spacer(),
                            CustomImageView(
                              svgPath: ImageConstant.imgArrowright,
                              height: getSize(24),
                              width: getSize(24),
                            ),
                          ],
                        ),
                      ),
                    ),


                  ],
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }


  onTapBuyPackage() {
    Get.toNamed(AppRoutes.buyPackageScreen);
  }

  onTapRecharge() {
    Get.toNamed(AppRoutes.rechargeBalanceScreen);
  }

  onTapRefund() {
    Get.toNamed(AppRoutes.refundPackageTabContainerScreen);
  }
}


