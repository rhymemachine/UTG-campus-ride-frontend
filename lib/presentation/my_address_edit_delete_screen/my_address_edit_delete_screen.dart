import 'package:bustrackingapp/presentation/my_address_delete_screen/my_address_delete_screen.dart';
import 'package:bustrackingapp/widgets/widget_utils.dart';

import 'controller/my_address_edit_delete_controller.dart';
import 'package:bustrackingapp/core/app_export.dart';
import 'package:flutter/material.dart';

class MyAddressEditDeleteScreen
    extends GetWidget<MyAddressEditDeleteController> {
  const MyAddressEditDeleteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SizedBox(
        width: double.maxFinite,
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                  padding: getPadding(
                      left: 172,
                      top: 15,
                      right: 172,
                      bottom: 15),
                  decoration: AppDecoration.white
                      .copyWith(
                      borderRadius: BorderRadiusStyle
                          .customBorderTL32),

                  child: Container(
                    height: getVerticalSize(
                      5,
                    ),
                    // thickness: getVerticalSize(
                    //   5,
                    // ),

                    decoration: BoxDecoration(
                        color: theme.colorScheme
                                .onPrimaryContainer,
                        borderRadius: BorderRadius.all(Radius.circular(100))
                    ),
                  ),

                  // child: Divider(
                  //     color: theme.colorScheme
                  //         .onPrimaryContainer)
              ),
              Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment:
                  MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                        onTap: () {
                          onTapTxtEdit();
                        },
                        child: Container(
                          width: double.infinity,
                          color: Colors.transparent,
                          padding: getPadding(top: 24,bottom: 16),
                          child: Text("lbl_edit".tr,
                              textAlign: TextAlign.center,
                              style: CustomTextStyles
                                  .titleMediumBold),
                        )),

                    // Padding(
                    //     padding: getPadding(top: 21),
                    //     child: Divider(
                    //         color: appTheme.gray100)),

                    Padding(
                      padding: getPadding(
                        top: 0,
                      ),
                      child: Divider(
                        height: getVerticalSize(
                          1,
                        ),
                        thickness: getVerticalSize(
                          1,
                        ),
                        color: appTheme.blueGray100,
                        endIndent: getSize(17),
                        indent: getSize(17),
                      ),
                    ),
                    GestureDetector(
                        onTap: () {
                          onTapTxtDelete(context);
                        },
                        child: Container(
                          width: double.infinity,
                          color: Colors.transparent,
                          padding: getPadding(top: 18,bottom: 40),
                          child: Text(
                              "lbl_delete".tr,
                              textAlign: TextAlign.center,
                              style: CustomTextStyles
                                  .titleMediumBold),
                        ))
                  ])
            ]));
  }

  /// Navigates to the editAddressScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the editAddressScreen.
  onTapTxtEdit() {
    Get.back();
    Get.toNamed(
      AppRoutes.editAddressScreen,
    );
  }

  /// Navigates to the myAddressDeleteScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the myAddressDeleteScreen.
  onTapTxtDelete(BuildContext context) {

    Get.back();
    showCommonDialog(context: context, widget: MyAddressDeleteScreen());

    // Get.toNamed(
    //   AppRoutes.myAddressDeleteScreen,
    // );
  }
}
