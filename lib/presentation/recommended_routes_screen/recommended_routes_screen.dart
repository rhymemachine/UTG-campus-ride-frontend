
import '../recommended_routes_screen/widgets/busroute_item_widget.dart';
import 'controller/recommended_routes_controller.dart';
import 'models/busroute_item_model.dart';
import 'package:bustrackingapp/core/app_export.dart';
import 'package:bustrackingapp/widgets/app_bar/appbar_image.dart';
import 'package:bustrackingapp/widgets/app_bar/appbar_title.dart';
import 'package:bustrackingapp/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class RecommendedRoutesScreen extends GetWidget<RecommendedRoutesController> {
  const RecommendedRoutesScreen({Key? key}) : super(key: key);

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
                              text: "msg_recommended_routes".tr,
                              margin: getMargin(left: 16)))),
                  Expanded(
                      child: Padding(
                          padding: getPadding(left: 16, top: 24, right: 16,bottom: 24),
                          child: Obx(() => ListView.separated(
                            padding: EdgeInsets.zero,
                              physics: BouncingScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(
                                    height: getVerticalSize(16));
                              },
                              itemCount: controller
                                  .recommendedRoutesModelObj
                                  .value
                                  .busrouteItemList
                                  .value
                                  .length,
                              itemBuilder: (context, index) {
                                BusrouteItemModel model = controller
                                    .recommendedRoutesModelObj
                                    .value
                                    .busrouteItemList
                                    .value[index];
                                return BusrouteItemWidget(model,
                                    onTapBusroute: () {
                                  onTapBusroute();
                                });
                              }))))
                ])));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] package to
  /// navigate to the previous screen in the navigation stack.
  onTapArrowleftone() {
    Get.back();
  }

  /// Navigates to the busRoutesScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the busRoutesScreen.
  onTapBusroute() {
    Get.toNamed(
      AppRoutes.busRoutesScreen,
    );
  }
}
