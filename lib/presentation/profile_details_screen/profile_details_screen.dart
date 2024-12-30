import 'controller/profile_details_controller.dart';
import 'package:bustrackingapp/core/app_export.dart';
import 'package:bustrackingapp/widgets/app_bar/appbar_image.dart';
import 'package:bustrackingapp/widgets/app_bar/appbar_image_1.dart';
import 'package:bustrackingapp/widgets/app_bar/appbar_title.dart';
import 'package:bustrackingapp/widgets/app_bar/custom_app_bar.dart';
import 'package:bustrackingapp/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ProfileDetailsScreen extends GetWidget<ProfileDetailsController> {
  ProfileDetailsScreen({Key? key}) : super(key: key);

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
                                      left: 16, top: 4, bottom: 2),
                                  onTap: () {
                                    onTapArrowleftone();
                                  }),
                              title: AppbarTitle(
                                  text: "lbl_profile_details".tr,
                                  margin: getMargin(left: 16)),
                              actions: [
                                AppbarImage1(
                                    svgPath: ImageConstant.imgLink,
                                    margin: getMargin(
                                        left: 16,
                                        top: 4,
                                        right: 16,
                                        bottom: 2),
                                    onTap: () {
                                      onTapLinkone();
                                    })
                              ])),
                      Expanded(
                        child: Container(
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
                                                svgPath:
                                                    ImageConstant.imgAvtar1,
                                                height: getSize(100),
                                                width: getSize(100),
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

                                  Container(
                                      width: double.infinity,
                                      // width: getHorizontalSize(382),
                                      margin: getMargin(top: 16, bottom: 5),
                                      padding: getPadding(
                                          left: 16,
                                          top: 12,
                                          right: 16,
                                          bottom: 12),
                                      decoration: AppDecoration.fillGray
                                          .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder20),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                          MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                                padding: getPadding(top: 2),
                                                child: Text(
                                                    "lbl_name".tr,
                                                    style: CustomTextStyles
                                                        .bodyMediumGray500)),
                                            Padding(
                                                padding: getPadding(top: 12),
                                                child: Text(
                                                    "lbl_ronald_richards".tr,
                                                    style: theme
                                                        .textTheme.bodyLarge))
                                          ])),

                                  // CustomFloatingTextField(
                                  //     margin: getMargin(top: 40),
                                  //     controller: controller.nameController,
                                  //     labelText: "lbl_name".tr,
                                  //     labelStyle: CustomTextStyles
                                  //         .bodyLargeSFProDisplay,
                                  //     hintText: "lbl_name".tr,
                                  //     hintStyle: CustomTextStyles
                                  //         .bodyLargeSFProDisplay,
                                  //     validator: (value) {
                                  //       if (!isText(value)) {
                                  //         return "Please enter valid text";
                                  //       }
                                  //       return null;
                                  //     }),

                                  Container(
                                      width: double.infinity,
                                      // width: getHorizontalSize(382),
                                      margin: getMargin(top: 16, bottom: 5),
                                      padding: getPadding(
                                          left: 16,
                                          top: 12,
                                          right: 16,
                                          bottom: 12),
                                      decoration: AppDecoration.fillGray
                                          .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder20),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                          MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                                padding: getPadding(top: 2),
                                                child: Text(
                                                    "lbl_email_address".tr,
                                                    style: CustomTextStyles
                                                        .bodyMediumGray500)),
                                            Padding(
                                                padding: getPadding(top: 12),
                                                child: Text(
                                                    "msg_ronaldrichards_gmail_com".tr,
                                                    style: theme
                                                        .textTheme.bodyLarge))
                                          ])),


                                  // CustomFloatingTextField(
                                  //     margin: getMargin(top: 16),
                                  //     controller: controller.emailController,
                                  //     labelText: "lbl_email_address".tr,
                                  //     labelStyle: CustomTextStyles
                                  //         .bodyLargeSFProDisplay,
                                  //     hintText: "lbl_email_address".tr,
                                  //     hintStyle: CustomTextStyles
                                  //         .bodyLargeSFProDisplay,
                                  //     textInputAction: TextInputAction.done,
                                  //     textInputType:
                                  //         TextInputType.emailAddress,
                                  //     validator: (value) {
                                  //       if (value == null ||
                                  //           (!isValidEmail(value,
                                  //               isRequired: true))) {
                                  //         return "Please enter valid email";
                                  //       }
                                  //       return null;
                                  //     }),
                                  Container(
                                    width: double.infinity,
                                      // width: getHorizontalSize(382),
                                      margin: getMargin(top: 16, bottom: 5),
                                      padding: getPadding(
                                          left: 16,
                                          top: 12,
                                          right: 16,
                                          bottom: 12),
                                      decoration: AppDecoration.fillGray
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder20),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                                padding: getPadding(top: 2),
                                                child: Text(
                                                    "lbl_phone_number".tr,
                                                    style: CustomTextStyles
                                                        .bodyMediumGray500)),
                                            Padding(
                                                padding: getPadding(top: 12),
                                                child: Text(
                                                    "lbl_405_555_0128".tr,
                                                    style: theme
                                                        .textTheme.bodyLarge))
                                          ]))
                                ])),
                      )
                    ]))));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] package to
  /// navigate to the previous screen in the navigation stack.
  onTapArrowleftone() {
    Get.back();
  }

  /// Navigates to the editProfileScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the editProfileScreen.
  onTapLinkone() {
    Get.toNamed(
      AppRoutes.editProfileScreen,
    );
  }
}
