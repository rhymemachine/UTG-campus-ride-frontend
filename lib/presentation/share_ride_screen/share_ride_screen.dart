import 'package:bustrackingapp/core/app_export.dart';
import 'package:bustrackingapp/presentation/share_ride_screen/controller/share_ride_controller.dart';
import 'package:bustrackingapp/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ShareRideScreen extends StatelessWidget {
  ShareRideScreen({Key? key}) : super(key: key);

ShareRideController controller = Get.put(ShareRideController());

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Padding(
        padding: getPadding(
            left: 16,
            right: 16),
        child: Column(
            mainAxisSize:
            MainAxisSize
                .min,
            crossAxisAlignment:
            CrossAxisAlignment
                .start,
            mainAxisAlignment:
            MainAxisAlignment
                .start,
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(

                  margin: getMargin(top: 15,bottom: 24),
                  height: getVerticalSize(7),
                  width: getVerticalSize(75),
                  decoration: BoxDecoration(
                    color: appTheme.gray100,
                    borderRadius: BorderRadius.circular(20)
                  ),
                ),
              ),
              Text(
                  "lbl_share_my_ride"
                      .tr,
                  style: CustomTextStyles
                      .titleMediumBold),
              Padding(
                  padding:
                  getPadding(
                      top:
                      15),
                  child: Text(
                      "msg_share_my_ride_information"
                          .tr,
                      style: CustomTextStyles
                          .bodyLargeErrorContainer)),


              GestureDetector(
                onTap: () {
                  controller.selectedIndex.value = 0;
                },
                child: Obx(() => Container(
                    margin: getMargin(
                        top:
                        18),
                    padding: getPadding(
                        left:
                        13,
                        top: 16,
                        right:
                        13,
                        bottom:
                        16),
                    decoration: (controller.selectedIndex.value == 0)?AppDecoration
                        .outlinePrimary
                        .copyWith(
                        borderRadius: BorderRadiusStyle
                            .roundedBorder16):AppDecoration
                        .fillGray
                        .copyWith(
                        borderRadius: BorderRadiusStyle
                            .roundedBorder16),
                    child: Row(
                        mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(imagePath: ImageConstant.imgEllipse22, height: getSize(52), width: getSize(52), radius: BorderRadius.circular(getHorizontalSize(26))),
                                Padding(
                                    padding: getPadding(left: 22, top: 4, bottom: 3),
                                    child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [
                                      Text("msg_mr_esther_howards".tr, style: CustomTextStyles.titleMediumBold),
                                      Padding(padding: getPadding(top: 9), child: Text("msg_relation_father".tr, style: CustomTextStyles.bodyMediumGray500))
                                    ]))
                              ]),
                          (controller.selectedIndex.value == 0)?CustomImageView(
                              svgPath: ImageConstant.imgCheckmarkPrimary,
                              height: getSize(24),
                              width: getSize(24),
                              margin: getMargin(top: 14, right: 8, bottom: 14)):CustomImageView(
                              svgPath: ImageConstant.imgCheckmarkBlack900,
                              height: getSize(24),
                              width: getSize(24),
                              margin: getMargin(top: 14, right: 5, bottom: 14))
                        ]))),
              ),
              


              GestureDetector(
                onTap: () {
                  controller.selectedIndex.value = 1;
                },
                child: Obx(() => Container(
                    margin: getMargin(
                        top:
                        16),
                    padding: getPadding(
                        left:
                        13,
                        top: 16,
                        right:
                        13,
                        bottom:
                        16),
                    decoration: (controller.selectedIndex.value == 1)?AppDecoration
                        .outlinePrimary
                        .copyWith(
                        borderRadius: BorderRadiusStyle
                            .roundedBorder16):AppDecoration
                        .fillGray
                        .copyWith(
                        borderRadius: BorderRadiusStyle
                            .roundedBorder16),
                    child: Row(
                        mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(imagePath: ImageConstant.imgEllipse2252x52, height: getSize(52), width: getSize(52), radius: BorderRadius.circular(getHorizontalSize(26))),
                                Padding(
                                    padding: getPadding(left: 19, top: 6, bottom: 3),
                                    child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [
                                      Text("msg_mrs_jenny_wilson".tr, style: CustomTextStyles.titleMediumBold),
                                      Padding(padding: getPadding(top: 7), child: Text("msg_relation_mother".tr, style: CustomTextStyles.bodyMediumGray500))
                                    ]))
                              ]),
                          (controller.selectedIndex.value == 1)?CustomImageView(
                              svgPath: ImageConstant.imgCheckmarkPrimary,
                              height: getSize(24),
                              width: getSize(24),
                              margin: getMargin(top: 14, right: 8, bottom: 14)):CustomImageView(
                              svgPath: ImageConstant.imgCheckmarkBlack900,
                              height: getSize(24),
                              width: getSize(24),
                              margin: getMargin(top: 14, right: 5, bottom: 14))
                        ]))),
              ),
              


              CustomElevatedButton(
                  text:
                  "lbl_share_ride"
                      .tr,
                  margin: getMargin(
                      top:
                      24,bottom: 32),
                  onTap: () {
                    onTapShareride();
                  })
            ]));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] package to
  /// navigate to the previous screen in the navigation stack.
  onTapArrowleftone() {
    Get.back();
  }

  /// Navigates to the mapScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the mapScreen.
  onTapShareride() {
    Get.back();
    // Get.toNamed(
    //   AppRoutes.mapScreen,
    // );
  }
}
