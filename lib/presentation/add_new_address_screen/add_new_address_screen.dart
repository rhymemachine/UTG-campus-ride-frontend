import 'controller/add_new_address_controller.dart';
import 'package:bustrackingapp/core/app_export.dart';
import 'package:bustrackingapp/widgets/app_bar/appbar_image.dart';
import 'package:bustrackingapp/widgets/app_bar/appbar_title.dart';
import 'package:bustrackingapp/widgets/app_bar/custom_app_bar.dart';
import 'package:bustrackingapp/widgets/custom_drop_down.dart';
import 'package:bustrackingapp/widgets/custom_elevated_button.dart';
import 'package:bustrackingapp/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class AddNewAddressScreen extends GetWidget<AddNewAddressController> {
  const AddNewAddressScreen({Key? key}) : super(key: key);

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
                              text: "lbl_add_new_address".tr,
                              margin: getMargin(left: 16)))),
                  Expanded(
                    flex: 1,
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
                                  hintText: "Name",
                                  hintStyle: theme.textTheme.bodyLarge!,
                              ),
                              CustomTextFormField(
                                  controller: controller.addressoneController,
                                  margin: getMargin(top: 16),
                                  hintText: "Address",

                                  hintStyle: CustomTextStyles
                                      .bodyLargeErrorContainer,
                                  maxLines: 6),
                              CustomTextFormField(
                                  controller: controller.zipcodeController,
                                  margin: getMargin(top: 16),
                                  hintText: "Pin code",
                                hintStyle: CustomTextStyles
                                    .bodyLargeErrorContainer,),
                              CustomTextFormField(
                                  controller: controller.cityoneController,
                                  margin: getMargin(top: 16),
                                  hintText: "City",
                                hintStyle: CustomTextStyles
                                    .bodyLargeErrorContainer,),
                              CustomTextFormField(
                                  controller: controller.stateoneController,
                                  margin: getMargin(top: 16),
                                  hintText: "State",
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
                                  hintText: "lbl_us".tr,
                                  hintStyle: CustomTextStyles
                                      .bodyLargeErrorContainer,
                                  items: controller.addNewAddressModelObj
                                      .value.dropdownItemList.value,
                                  onChanged: (value) {
                                    controller.onSelected(value);
                                  })
                            ])),
                  )
                ])),
        bottomNavigationBar: CustomElevatedButton(
            text: "lbl_add".tr,
            margin: getMargin(left: 16, right: 16, bottom: 40),
            onTap: () {
              onTapAdd();
            }));
  }

  /// Navigates to the myAddressScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the myAddressScreen.
  onTapAdd() {
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
