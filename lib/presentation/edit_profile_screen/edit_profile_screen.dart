import 'controller/edit_profile_controller.dart';
import 'package:bustrackingapp/core/app_export.dart';
import 'package:bustrackingapp/core/utils/validation_functions.dart';
import 'package:bustrackingapp/widgets/app_bar/appbar_image.dart';
import 'package:bustrackingapp/widgets/app_bar/appbar_title.dart';
import 'package:bustrackingapp/widgets/app_bar/custom_app_bar.dart';
import 'package:bustrackingapp/widgets/custom_elevated_button.dart';
import 'package:bustrackingapp/widgets/custom_icon_button.dart';
import 'package:bustrackingapp/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class EditProfileScreen extends GetWidget<EditProfileController> {
  EditProfileScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: appTheme.whiteA700,
        body: Form(
            key: _formKey,
            child: SizedBox(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          padding: getPadding(top: 19, bottom: 19),
                          decoration:
                              AppDecoration.outlineOnPrimaryContainer,
                          child: CustomAppBar(
                              leadingWidth: getHorizontalSize(36),
                              leading: AppbarImage(
                                  svgPath: ImageConstant.imgArrowleft,
                                  margin: getMargin(
                                      left: 16, top: 2, bottom: 4),
                                  onTap: () {
                                    onTapArrowleftone();
                                  }),
                              title: AppbarTitle(
                                  text: "lbl_edit_profile".tr,
                                  margin: getMargin(left: 16)))),
                      Container(
                          padding: getPadding(
                              left: 16, top: 24, right: 16, bottom: 24),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                    height: getSize(104),
                                    width: getSize(104),
                                    child: Stack(
                                        alignment: Alignment.bottomRight,
                                        children: [
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgEllipse225,
                                              height: getSize(100),
                                              width: getSize(100),
                                              radius: BorderRadius.circular(
                                                  getHorizontalSize(50)),
                                              alignment:
                                                  Alignment.topCenter),
                                          CustomIconButton(
                                              height: getSize(34),
                                              width: getSize(34),
                                              padding: getPadding(all: 7),
                                              decoration:
                                                  IconButtonStyleHelper
                                                      .outlineBlackTL17,
                                              alignment:
                                                  Alignment.bottomRight,
                                              child: CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgCameraBlack900))
                                        ])),
                                CustomTextFormField(
                                    controller:
                                        controller.nameoneController,
                                    margin: getMargin(top: 40),
                                    hintText: "lbl_first_name".tr,
                                    hintStyle: CustomTextStyles.bodyLargeErrorContainer),
                                CustomTextFormField(
                                    controller: controller.emailController,
                                    margin: getMargin(top: 16),
                                    hintText:
                                        "lbl_email_address".tr,
                                    hintStyle: CustomTextStyles.bodyLargeErrorContainer,
                                    textInputType:
                                        TextInputType.emailAddress,
                                    validator: (value) {
                                      if (value == null ||
                                          (!isValidEmail(value,
                                              isRequired: true))) {
                                        return "Please enter valid email";
                                      }
                                      return null;
                                    }),
                                CustomTextFormField(
                                    controller:
                                        controller.phoneoneController,
                                    margin: getMargin(top: 16, bottom: 5),
                                    hintText: "lbl_phone_number".tr,
                                    hintStyle: CustomTextStyles.bodyLargeErrorContainer,
                                    textInputAction: TextInputAction.done)
                              ]))
                    ]))),
        bottomNavigationBar: CustomElevatedButton(
            text: "lbl_save_changes".tr,
            margin: getMargin(left: 16, right: 16, bottom: 40),onTap: (){
              onTapSave();
        },));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] package to
  /// navigate to the previous screen in the navigation stack.
  onTapArrowleftone() {
    Get.back();
  }

  onTapSave(){
    Get.back();
  }
}
