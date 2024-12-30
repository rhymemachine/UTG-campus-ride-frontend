import 'package:bustrackingapp/presentation/my_address_edit_delete_screen/my_address_edit_delete_screen.dart';

import '../my_address_screen/widgets/useraddress_item_widget.dart';
import 'controller/my_address_controller.dart';
import 'models/useraddress_item_model.dart';
import 'package:bustrackingapp/core/app_export.dart';
import 'package:bustrackingapp/widgets/app_bar/appbar_image.dart';
import 'package:bustrackingapp/widgets/app_bar/appbar_image_1.dart';
import 'package:bustrackingapp/widgets/app_bar/appbar_title.dart';
import 'package:bustrackingapp/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class MyAddressScreen extends GetWidget<MyAddressController> {
  const MyAddressScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
        backgroundColor: appTheme.whiteA700,
        body: SizedBox(
            width: double.maxFinite,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              Container(
                  padding: getPadding(top: 18, bottom: 18),
                  decoration: AppDecoration.outlineOnPrimaryContainer,
                  child: CustomAppBar(
                      leadingWidth: getHorizontalSize(36),
                      leading: AppbarImage(
                          svgPath: ImageConstant.imgArrowleft,
                          margin: getMargin(left: 16, top: 1, bottom: 5),
                          onTap: () {
                            onTapArrowleftone();
                          }),
                      title: AppbarTitle(
                          text: "lbl_my_address".tr,
                          margin: getMargin(left: 16)),
                      actions: [
                        AppbarImage1(
                            svgPath: ImageConstant.imgPlus,
                            margin: getMargin(
                                left: 16, top: 1, right: 16, bottom: 5),
                            onTap: () {
                              onTapPlusone();
                            })
                      ])),
              Expanded(
                  child: Padding(
                      padding: getPadding(left: 16, top: 24, right: 16),
                      child: Obx(() => ListView.separated(
                          padding: EdgeInsets.zero,
                          physics: BouncingScrollPhysics(),
                          shrinkWrap: true,
                          separatorBuilder: (context, index) {
                            return SizedBox(height: getVerticalSize(16));
                          },
                          itemCount: controller.myAddressModelObj.value
                              .useraddressItemList.value.length,
                          itemBuilder: (context, index) {
                            UseraddressItemModel model = controller
                                .myAddressModelObj
                                .value
                                .useraddressItemList
                                .value[index];
                            return UseraddressItemWidget(
                              model,
                              onTapDefault: () {
                                onTapDefault(context);
                              },
                            );
                          }))))
            ])));
  }

  /// Navigates to the myAddressEditDeleteScreen when the action is triggered.
  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the myAddressEditDeleteScreen.
  onTapDefault(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: appTheme.whiteA700,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(getHorizontalSize(32)),
              topLeft: Radius.circular(getHorizontalSize(32)))),
      builder: (context) {
        return MyAddressEditDeleteScreen();
      },
    );

    // Get.toNamed(AppRoutes.myAddressEditDeleteScreen);
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] package to
  /// navigate to the previous screen in the navigation stack.
  onTapArrowleftone() {
    Get.back();
  }

  /// Navigates to the addNewAddressScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the addNewAddressScreen.
  onTapPlusone() {
    Get.toNamed(
      AppRoutes.addNewAddressScreen,
    );
  }
}
