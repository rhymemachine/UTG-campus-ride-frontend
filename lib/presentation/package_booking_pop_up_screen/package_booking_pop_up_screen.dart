import 'controller/package_booking_pop_up_controller.dart';
import 'package:bustrackingapp/core/app_export.dart';
import 'package:bustrackingapp/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class PackageBookingPopUpScreen
    extends GetWidget<PackageBookingPopUpController> {
  const PackageBookingPopUpScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Container(
        width: double.maxFinite,
        // padding: getPadding(
        //   left: 24,
        //   right: 24,
        // ),
        child: Container(
          margin: getMargin(
            bottom: 1,
          ),
          padding: getPadding(
            left: 0,
            top: 20,
            right: 0,
            bottom: 20,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadiusStyle.roundedBorder16,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: getSize(120),
                width: getSize(120),
                padding: getPadding(
                  all: 28,
                ),
                decoration: AppDecoration.fillCyan50.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder60,
                ),
                child: CustomImageView(
                  svgPath: ImageConstant.imgCheckmarkPrimary64x64,
                  height: getSize(64),
                  width: getSize(64),
                  alignment: Alignment.center,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 29,
                ),
                child: Text(
                  "msg_buy_package_successfully".tr,
                  style: theme.textTheme.titleLarge,
                ),
              ),
              Container(
                width: getHorizontalSize(221),
                margin: getMargin(
                  left: 43,
                  top: 12,
                  right: 44,
                ),
                child: Text(
                  "msg_you_have_successfully3".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.bodyLargeErrorContainer.copyWith(
                    height: 1.50,
                  ),
                ),
              ),
              CustomElevatedButton(
                text: "lbl_go_to_wallet".tr,
                margin: getMargin(
                  top: 37,
                ),
                onTap: () {
                  Get.offNamed(AppRoutes.homeContainerScreen);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
