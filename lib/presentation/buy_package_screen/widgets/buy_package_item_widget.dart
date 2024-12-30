import '../controller/buy_package_controller.dart';
import '../models/buy_package_item_model.dart';
import 'package:bustrackingapp/core/app_export.dart';
import 'package:bustrackingapp/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BuyPackageItemWidget extends StatelessWidget {
  BuyPackageItemWidget(
    this.buyPackageItemModelObj, {
    Key? key,
    this.onTapBuy,
  }) : super(
          key: key,
        );

  BuyPackageItemModel buyPackageItemModelObj;

  var controller = Get.find<BuyPackageController>();

  VoidCallback? onTapBuy;

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
              top: 19,
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
                        buyPackageItemModelObj.passValidation ?? "",
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
                              text: buyPackageItemModelObj.price,
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
            text: "lbl_buy".tr,
            margin: getMargin(
              left: 16,
              top: 21,
              right: 16,
            ),
            onTap: () {
              onTapBuy?.call();
            },
          ),
        ],
      ),
    );
  }
}
