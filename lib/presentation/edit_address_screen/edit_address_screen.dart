import 'controller/edit_address_controller.dart';
import 'package:bustrackingapp/core/app_export.dart';
import 'package:bustrackingapp/widgets/app_bar/appbar_image.dart';
import 'package:bustrackingapp/widgets/app_bar/appbar_title.dart';
import 'package:bustrackingapp/widgets/app_bar/custom_app_bar.dart';
import 'package:bustrackingapp/widgets/custom_drop_down.dart';
import 'package:bustrackingapp/widgets/custom_elevated_button.dart';
import 'package:bustrackingapp/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class EditAddressScreen extends GetWidget<EditAddressController> {
  const EditAddressScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
        resizeToAvoidBottomInset: true,
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
                              text: "lbl_edit_address".tr,
                              margin: getMargin(left: 16)))),
                  Expanded(
                    child: Container(
                        padding: getPadding(
                            left: 16, top: 24, right: 16, bottom: 0),
                        child: ListView(
                          physics: BouncingScrollPhysics(),
                            padding: EdgeInsets.zero,
                            // mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomTextFormField(
                                  controller: controller.nameoneController,
                                  hintText: "Name".tr,
                                hintStyle: CustomTextStyles
                                    .bodyLargeErrorContainer,),
                              CustomTextFormField(
                                  controller:
                                      controller.groupFiftyOneController,
                                  margin: getMargin(top: 16),
                                  hintText: "Address".tr,
                                  hintStyle: CustomTextStyles
                                      .bodyLargeErrorContainer,
                                  maxLines: 6),
                              CustomTextFormField(
                                  controller: controller.zipcodeController,
                                  margin: getMargin(top: 16),
                                  hintText: "PIn code".tr,
                                hintStyle: CustomTextStyles
                                    .bodyLargeErrorContainer,),
                              CustomTextFormField(
                                  controller: controller.cityoneController,
                                  margin: getMargin(top: 16),
                                  hintText: "City".tr,
                                hintStyle: CustomTextStyles
                                    .bodyLargeErrorContainer,),
                              CustomTextFormField(
                                  controller: controller.stateoneController,
                                  margin: getMargin(top: 16),
                                  hintText: "State".tr,
                                  hintStyle: CustomTextStyles
                                  .bodyLargeErrorContainer,
                                  textInputAction: TextInputAction.done),
                              CustomDropDown(
                                  icon: Container(
                                      margin: getMargin(left: 30, right: 16),
                                      child: CustomImageView(
                                          svgPath: ImageConstant
                                              .imgArrowdownBlack900)),
                                  margin: getMargin(top: 16, bottom: 5),
                                  fillColor: Colors.white,
                                  hintText: "lbl_us".tr,
                                  hintStyle: theme.textTheme.bodyLarge!,
                                  items: controller.editAddressModelObj.value
                                      .dropdownItemList.value,
                                  onChanged: (value) {
                                    controller.onSelected(value);
                                  })
                            ])),
                  )
                ])),
        bottomNavigationBar: CustomElevatedButton(
            text: "lbl_save_changes".tr,
            margin: getMargin(left: 16, right: 16, bottom: 40),
            onTap: () {
              onTapSavechanges();
            }));
  }

  /// Navigates to the myAddressScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the myAddressScreen.
  onTapSavechanges() {
    Get.back();
    // Get.toNamed(
    //   AppRoutes.myAddressScreen,
    // );
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] package to
  /// navigate to the previous screen in the navigation stack.
  onTapArrowleftone() {
    Get.back();
  }
}
