import '../../widgets/custom_dotted_line.dart';
import 'controller/lostandfound_controller.dart';
import 'package:bustrackingapp/core/app_export.dart';
import 'package:bustrackingapp/widgets/app_bar/appbar_image.dart';
import 'package:bustrackingapp/widgets/app_bar/appbar_title.dart';
import 'package:bustrackingapp/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class LostandfoundScreen extends GetWidget<LostandfoundController> {
  const LostandfoundScreen({Key? key}) : super(key: key);

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
                              text: "Lost & Found".tr,
                              margin: getMargin(left: 16)))),
                  Container(
                      margin: getMargin(
                          left: 16, top: 21, right: 16, bottom: 5),
                      padding: getPadding(
                          left: 16, top: 18, right: 16, bottom: 18),
                      decoration: AppDecoration.fillGray.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder16),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                                padding: getPadding(top: 11),
                                child: Text("Westfield_Faraba".tr,
                                    style:
                                        CustomTextStyles.titleMediumBold)),
                            Padding(
                                padding: getPadding(top: 14),
                                child: Text("msg_august_17_01_40".tr,
                                    style: theme.textTheme.bodyMedium)),
                            Padding(
                                padding: getPadding(top: 25),
                                child: FDottedLine(
                                  color: appTheme.gray500,
                                  width: double.infinity,
                                  strokeWidth: 1,
                                  dottedLength: 7.0,
                                  space: 3.5,
                                )),
                                // child: Divider(color: appTheme.greenA100)),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                    padding: getPadding(
                                        left: 9, top: 25, right: 36),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                              padding:
                                                  getPadding(bottom: 1),
                                              child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment
                                                          .start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .start,
                                                  children: [
                                                    Text(
                                                        "description"
                                                            .tr,
                                                        style: CustomTextStyles
                                                            .bodyMediumGray500),
                                                    Padding(
                                                        padding: getPadding(
                                                            top: 13),
                                                        child: Text(
                                                            "silver MacBook"
                                                                .tr,
                                                            style: theme
                                                                .textTheme
                                                                .bodyLarge))
                                                  ])),

                                        ]))),
                            Padding(
                                padding: getPadding(top: 26),
                                child: FDottedLine(
                                  color: appTheme.gray500,
                                  width: double.infinity,
                                  strokeWidth: 1,
                                  dottedLength: 7.0,
                                  space: 3.5,
                                )),
                                // child: Divider(color: appTheme.gray100)),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                    padding: getPadding(
                                        left: 9, top: 26, right: 24),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Text("lostAt".tr,
                                                    style: CustomTextStyles
                                                        .bodyMediumGray500),
                                                Padding(
                                                    padding:
                                                        getPadding(top: 13),
                                                    child: Text(
                                                        "Cafeteria at Main Street on Dec 10, 2024".tr,
                                                        style: theme
                                                            .textTheme
                                                            .bodyLarge)),
                                              ]),

                                        ]))),
                            Padding(
                                padding: getPadding(top: 26),
                                child: FDottedLine(
                                  color: appTheme.gray500,
                                  width: double.infinity,
                                  strokeWidth: 1,
                                  dottedLength: 7.0,
                                  space: 3.5,
                                )),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                    padding: getPadding(
                                        left: 9, top: 26, right: 24),
                                    child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                              MainAxisAlignment.start,
                                              children: [
                                                Text("Status".tr,
                                                    style: CustomTextStyles
                                                        .bodyMediumGray500),
                                                Padding(
                                                    padding:
                                                    getPadding(top: 13),
                                                    child: Text(
                                                        "Missing".tr,
                                                        style: theme
                                                            .textTheme
                                                            .bodyLarge)),
                                              ]),

                                        ]))),
                            Padding(
                                padding: getPadding(top: 26),
                                child: FDottedLine(
                                  color: appTheme.gray500,
                                  width: double.infinity,
                                  strokeWidth: 1,
                                  dottedLength: 7.0,
                                  space: 3.5,
                                )),
                                // child: Divider(color: appTheme.gray100)),
                          ]))
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
