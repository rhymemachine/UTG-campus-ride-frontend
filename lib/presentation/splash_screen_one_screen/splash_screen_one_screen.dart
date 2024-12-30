import 'controller/splash_screen_one_controller.dart';
import 'package:bustrackingapp/core/app_export.dart';
import 'package:flutter/material.dart';

class SplashScreenOneScreen extends GetWidget<SplashScreenOneController> {
  const SplashScreenOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
        backgroundColor: appTheme.whiteA700,
        body: SizedBox(
            width: double.maxFinite,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                      svgPath: ImageConstant.imgGroup,
                      height: getVerticalSize(119),
                      width: getHorizontalSize(87)),
                  Padding(
                      padding: getPadding(top: 18, bottom: 4),
                      child: Text("lbl_bus_track".tr.toUpperCase(),
                          style:
                              CustomTextStyles.headlineMediumSFProDisplay))
                ])));
  }
}
