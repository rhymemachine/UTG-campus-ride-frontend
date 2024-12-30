import '../controller/refund_package_controller.dart';
import '../models/refund_package_item_model.dart';
import 'package:bustrackingapp/core/app_export.dart';
import 'package:bustrackingapp/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class RefundPackageItemWidget extends StatelessWidget {
  RefundPackageItemWidget(
    this.refundPackageItemModelObj, {
    Key? key,
    this.onTapContinuefor,
  }) : super(
          key: key,
        );

  RefundPackageItemModel refundPackageItemModelObj;

  var controller = Get.find<RefundPackageController>();

  VoidCallback? onTapContinuefor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        top: 16,
        bottom: 16,
      ),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: getPadding(
              left: 15,
              right: 15,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: getPadding(
                    top: 7,
                    bottom: 2,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_washington3".tr,
                        style: theme.textTheme.titleMedium,
                      ),
                      Padding(
                        padding: getPadding(
                          top: 11,
                        ),
                        child: Text(
                          "lbl_washington".tr,
                          style: theme.textTheme.bodyMedium,
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgCameraWhiteA700,
                      height: getVerticalSize(34),
                      width: getHorizontalSize(80),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 5,
                      ),
                      child: Text(
                        "lbl_12_km".tr,
                        style: theme.textTheme.labelLarge,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: getPadding(
                    top: 6,
                    bottom: 2,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_manchester".tr,
                        style: theme.textTheme.titleMedium,
                      ),
                      Padding(
                        padding: getPadding(
                          top: 11,
                        ),
                        child: Text(
                          "lbl_manchester".tr,
                          style: theme.textTheme.bodyMedium,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: getPadding(
              top: 20,
            ),
            child: Divider(
              color: appTheme.blueGray10001,
            ),
          ),
          Padding(
            padding: getPadding(
              left: 16,
              top: 18,
              right: 16,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "lbl_pass_validation".tr,
                      style: CustomTextStyles.bodyMediumGray50014,
                    ),
                    Padding(
                      padding: getPadding(
                        top: 11,
                      ),
                      child: Text(
                        refundPackageItemModelObj.passValidation ?? "",
                        style: CustomTextStyles.titleMediumBold,
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "lbl_price".tr,
                      style: CustomTextStyles.bodyMediumGray50014,
                    ),
                    Padding(
                      padding: getPadding(
                        top: 12,
                      ),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: refundPackageItemModelObj.price,
                              style: CustomTextStyles.titleMediumBold18,
                            ),
                            TextSpan(
                              text: " ",
                            ),
                            TextSpan(
                              text: "lbl_bdt".tr,
                              style: theme.textTheme.bodySmall,
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          CustomElevatedButton(
            text: "msg_continue_for_refund".tr,
            margin: getMargin(
              left: 16,
              top: 21,
              right: 16,
            ),
            onTap: () {
              onTapContinuefor?.call();
            },
          ),
        ],
      ),
    );
  }
}
