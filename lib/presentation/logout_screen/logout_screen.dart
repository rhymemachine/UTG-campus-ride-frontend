import 'controller/logout_controller.dart';
import 'package:bustrackingapp/core/app_export.dart';
import 'package:bustrackingapp/widgets/custom_elevated_button.dart';
import 'package:bustrackingapp/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class LogoutScreen extends GetWidget<LogoutController> {
  const LogoutScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Container(
      width: double.maxFinite,
      padding: getPadding(
        all: 0,
      ),
      decoration: AppDecoration.white.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: getPadding(
              top: 6,
            ),
            child: Text(
              "msg_are_you_sure_you2".tr,
              style: CustomTextStyles.titleMediumBold,
            ),
          ),
          Padding(
            padding: getPadding(
              top: 33,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: CustomOutlinedButton(
                    buttonStyle: CustomButtonStyles
                        .outlineBlack
                        .copyWith(

                        side: MaterialStatePropertyAll(BorderSide(width: 2, color: appTheme.black900)),

                        fixedSize:
                        MaterialStateProperty
                            .all<Size>(
                            Size(
                                double
                                    .infinity,
                                getVerticalSize(
                                    46))
                        )),
                    text: "lbl_cancel".tr,
                    margin: getMargin(
                      right: 10,
                    ),
                    onTap: () {
                      onTapNo();
                    },
                  ),
                ),
                Expanded(
                  child: CustomElevatedButton(
                    height: getVerticalSize(46),
                    text: "lbl_log_out".tr,
                    buttonStyle: CustomButtonStyles
                        .fillPrimary
                        .copyWith(

                        fixedSize: MaterialStateProperty.all<
                            Size>(
                            Size(
                                double
                                    .infinity,
                                getVerticalSize(
                                    46))
                        )
                    ),
                    margin: getMargin(
                      left: 10,
                    ),
                    onTap: () {
                      onTapYes();
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }


  onTapNo() {
    Get.back();
  }


  onTapYes() {

    PrefUtils.setIsLogin(false);

    Get.offAllNamed(AppRoutes.loginScreen);

  }
}
