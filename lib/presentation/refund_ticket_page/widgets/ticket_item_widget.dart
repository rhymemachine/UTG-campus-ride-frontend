import '../controller/refund_ticket_controller.dart';
import '../models/ticket_item_model.dart';
import 'package:bustrackingapp/core/app_export.dart';
import 'package:bustrackingapp/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TicketItemWidget extends StatelessWidget {
  TicketItemWidget(
    this.ticketItemModelObj, {
    Key? key,
    this.onTapContinuefor,
  }) : super(
          key: key,
        );

  TicketItemModel ticketItemModelObj;

  var controller = Get.find<RefundTicketController>();

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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: getPadding(
              left: 18,
              right: 18,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "lbl_bus_01".tr,
                  style: theme.textTheme.titleMedium,
                ),
                // Spacer(
                //   flex: 52,
                // ),
                Padding(
                  padding: getPadding(
                    top: 2,
                  ),
                  child: Text(
                    "lbl_02_km".tr,
                    style: CustomTextStyles.titleSmall14,
                  ),
                ),
                // Spacer(
                //   flex: 47,
                // ),
                Text(
                  "lbl_10_00".tr,
                  style: CustomTextStyles.titleMediumBold,
                ),
              ],
            ),
          ),
          Padding(
            padding: getPadding(
              top: 16,
            ),
            child: Divider(
              color: appTheme.blueGray10001,
            ),
          ),
          Padding(
            padding: getPadding(
              left: 18,
              top: 14,
              right: 18,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: getPadding(
                    top: 7,
                    bottom: 3,
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
                          top: 10,
                        ),
                        child: Text(
                          "lbl_5_50_pm2".tr,
                          style: CustomTextStyles.bodyMediumBlack900_1,
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
                        "lbl_50_minutes".tr,
                        style: theme.textTheme.labelLarge,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: getPadding(
                    top: 6,
                    bottom: 3,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                          "lbl_6_40_pm2".tr,
                          style: CustomTextStyles.bodyMediumBlack900_1,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          CustomElevatedButton(
            text: "msg_continue_for_refund".tr,
            margin: getMargin(
              left: 16,
              top: 20,
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
