import 'controller/privacy_policy_controller.dart';
import 'package:bustrackingapp/core/app_export.dart';
import 'package:bustrackingapp/widgets/app_bar/appbar_image.dart';
import 'package:bustrackingapp/widgets/app_bar/appbar_title.dart';
import 'package:bustrackingapp/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class PrivacyPolicyScreen extends GetWidget<PrivacyPolicyController> {
  const PrivacyPolicyScreen({Key? key}) : super(key: key);

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
                              text: "lbl_privacy_policy".tr,
                              margin: getMargin(left: 16)))),
                  Expanded(
                    child: Container(
                        padding: getPadding(
                            left: 16, top: 29, right: 16, bottom: 29),
                        child: ListView(
                          physics: BouncingScrollPhysics(),
                            padding: EdgeInsets.zero,
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            // mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("msg_1_types_of_data".tr,
                                  style: CustomTextStyles
                                      .titleMediumSFProDisplay),
                              Container(
                                  width: getHorizontalSize(368),
                                  margin: getMargin(top: 12, right: 13),
                                  child: Text("msg_duis_tristique_diam".tr,
                                      maxLines: 6,
                                      overflow: TextOverflow.ellipsis,
                                      style: CustomTextStyles
                                          .bodyMediumSFProDisplayBlack900
                                          .copyWith(height: 1.50))),
                              Padding(
                                  padding: getPadding(top: 21),
                                  child: Text("msg_2_use_of_your_personal".tr,
                                      style: CustomTextStyles
                                          .titleMediumSFProDisplay)),
                              Container(
                                  width: getHorizontalSize(375),
                                  margin: getMargin(top: 12, right: 6),
                                  child: Text("msg_sed_sollicitudin".tr,
                                      maxLines: 6,
                                      overflow: TextOverflow.ellipsis,
                                      style: CustomTextStyles
                                          .bodyMediumSFProDisplayBlack900
                                          .copyWith(height: 1.50))),
                              Padding(
                                  padding: getPadding(top: 23),
                                  child: Text("msg_3_disclosure_of".tr,
                                      style: CustomTextStyles
                                          .titleMediumSFProDisplay)),
                              Container(
                                  width: getHorizontalSize(377),
                                  margin: getMargin(top: 12, bottom: 5),
                                  child: Text("msg_sed_sollicitudin2".tr,
                                      maxLines: 9,
                                      overflow: TextOverflow.ellipsis,
                                      style: CustomTextStyles
                                          .bodyMediumSFProDisplayBlack900
                                          .copyWith(height: 1.50)))
                            ])),
                  )
                ])));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] package to
  /// navigate to the previous screen in the navigation stack.
  onTapArrowleftone() {
    Get.back();
  }
}
