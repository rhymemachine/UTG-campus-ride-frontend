import 'controller/password_change_controller.dart';
import 'package:bustrackingapp/core/app_export.dart';
import 'package:bustrackingapp/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class PasswordChangeScreen extends GetWidget<PasswordChangeController> {
  const PasswordChangeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Container(
          // width: mediaQueryData.size.width,
          // height: mediaQueryData.size.height,
          // decoration: BoxDecoration(
          //     color: appTheme.whiteA700,
          //     image: DecorationImage(
          //         image: AssetImage(ImageConstant.imgPasswordchange),
          //         fit: BoxFit.cover)),
          child: Container(
              padding: getPadding(left: 24, right: 24,top: 20,bottom: 20),
              // margin: getMargin(top: 1),
              // padding: getPadding(
              //     left: 28, top: 48, right: 28, bottom: 48),
              // decoration: BoxDecoration(
              //     borderRadius: BorderRadiusStyle.roundedBorder16),
              decoration: AppDecoration.white.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder16,
              ),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                        height: getSize(120),
                        width: getSize(120),
                        padding: getPadding(
                            left: 37, top: 28, right: 37, bottom: 28),
                        decoration: AppDecoration.fillCyan.copyWith(
                            borderRadius:
                            BorderRadiusStyle.circleBorder60),
                        child: CustomImageView(
                            svgPath: ImageConstant.imgLock,
                            height: getVerticalSize(64),
                            width: getHorizontalSize(44),
                            alignment: Alignment.center)),
                    Padding(
                        padding: getPadding(top: 29),
                        child: Text("msg_password_reset".tr,
                            style: theme.textTheme.titleLarge)),
                    Container(
                        width: getHorizontalSize(248),
                        margin:
                        getMargin(left: 30, top: 12, right: 31),
                        child: Text("msg_you_have_successfully".tr,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: CustomTextStyles
                                .bodyLargeErrorContainer
                                .copyWith(height: 1.50))),
                    CustomElevatedButton(
                        text: "lbl_go_to_login".tr,
                        margin: getMargin(top: 37),
                        onTap: () {
                          onTapGotologin();
                        })
                  ]))),
    );
  }

  /// Navigates to the loginScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the loginScreen.
  onTapGotologin() {
    Get.toNamed(
      AppRoutes.loginScreen,
    );
  }
}
