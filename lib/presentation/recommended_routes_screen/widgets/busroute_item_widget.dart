import '../controller/recommended_routes_controller.dart';
import '../models/busroute_item_model.dart';
import 'package:bustrackingapp/core/app_export.dart';
import 'package:bustrackingapp/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BusrouteItemWidget extends StatelessWidget {
  BusrouteItemWidget(
    this.busrouteItemModelObj, {
    Key? key,
    this.onTapBusroute,
  }) : super(
          key: key,
        );

  BusrouteItemModel busrouteItemModelObj;

  var controller = Get.find<RecommendedRoutesController>();

  VoidCallback? onTapBusroute;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapBusroute?.call();
      },
      child: Container(
        padding: getPadding(
          top: 16,
          bottom: 16,
        ),
        decoration: AppDecoration.fillGray.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder16,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: getPadding(
                left: 16,
              ),
              child: Row(
                children: [
                  CustomIconButton(
                    height: getSize(48),
                    width: getSize(48),
                    padding: getPadding(
                      all: 12,
                    ),
                    decoration: IconButtonStyleHelper.fillWhiteA,
                    child: CustomImageView(
                      svgPath: ImageConstant.imgFrontofbus1,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 16,
                      top: 4,
                      bottom: 4,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          busrouteItemModelObj.busName ?? "",
                          style: theme.textTheme.titleMedium,
                        ),
                        Padding(
                          padding: getPadding(
                            top: 6,
                          ),
                          child: Text(
                            "msg_washington_to_manchester".tr,
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
                top: 16,
              ),
              child: Divider(),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: getPadding(
                  left: 16,
                  top: 16,
                  right: 16,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            CustomImageView(
                              svgPath: ImageConstant.imgLocationGray900,
                              height: getSize(16),
                              width: getSize(16),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 8,
                              ),
                              child: Text(
                                busrouteItemModelObj.busLocation ?? "",
                                style: CustomTextStyles.bodyMediumBlack900,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: getPadding(
                            top: 10,
                          ),
                          child: Row(
                            children: [
                              CustomImageView(
                                svgPath: ImageConstant.imgLocationGray900,
                                height: getSize(16),
                                width: getSize(16),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 8,
                                ),
                                child: Text(
                                  busrouteItemModelObj.busComingFrom ?? "",
                                  style: CustomTextStyles.bodyMediumBlack900,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: getVerticalSize(36),
                      width: getHorizontalSize(41),
                      margin: getMargin(
                        top: 6,
                      ),
                      child: Stack(
                        alignment: Alignment.bottomLeft,
                        children: [
                          CustomImageView(
                            svgPath: ImageConstant.imgSignal1,
                            height: getSize(21),
                            width: getSize(21),
                            alignment: Alignment.topRight,
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              busrouteItemModelObj.busNumber ?? "",
                              style: CustomTextStyles
                                  .headlineSmallErrorContainer,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
