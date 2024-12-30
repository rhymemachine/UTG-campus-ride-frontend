import 'controller/my_address_delete_controller.dart';
import 'package:bustrackingapp/core/app_export.dart';
import 'package:bustrackingapp/widgets/custom_elevated_button.dart';
import 'package:bustrackingapp/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

class MyAddressDeleteScreen extends GetWidget<MyAddressDeleteController> {
  const MyAddressDeleteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Container(
      width: double.maxFinite,
        margin: getMargin(bottom: 5),
        // padding: getPadding(
        //     left: 30, top: 40, right: 30, bottom: 40),
        decoration: AppDecoration.white.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder16),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: getVerticalSize(10),),
              Container(
                  // width: getHorizontalSize(259),
                  // margin: getMargin(left: 26, right: 27),
                  child: Text("msg_are_you_sure_you".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.titleMedium!
                          .copyWith(height: 1.50))),
              Padding(
                  padding: getPadding(top: 19),
                  child: Row(
                      // mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment:
                      MainAxisAlignment.center,
                      children: [
                        Expanded(
                            child: CustomOutlinedButton(
                              width: double.infinity,
                              height:  getVerticalSize(46),
                                text: "lbl_no".tr,
                                margin: getMargin(right: 10),
                                buttonStyle: CustomButtonStyles
                                    .outlineBlack
                                    .copyWith(

                                      side: MaterialStatePropertyAll(BorderSide(width: 2, color: appTheme.black900)),

                                    fixedSize:
                                    MaterialStateProperty
                                        .all<Size>(
                                        Size(
                                            double
                                                .infinity,
                                            getVerticalSize(
                                                46))
                                    )),
                                onTap: () {
                                  onTapNo();
                                })),
                        Expanded(
                            child: CustomElevatedButton(
                                width: double.infinity,
                                height: getVerticalSize(46),
                                buttonStyle: CustomButtonStyles
                                    .fillPrimary
                                    .copyWith(

                                    fixedSize: MaterialStateProperty.all<
                                        Size>(
                                        Size(
                                            double
                                                .infinity,
                                            getVerticalSize(
                                                46))
                                    )
                                ),
                                text: "lbl_yes".tr,
                                margin: getMargin(left: 10),
                                onTap: () {
                                  onTapYes();
                                }))
                      ]))
            ]));
  }

  /// Navigates to the myAddressScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the myAddressScreen.
  onTapNo() {

    Get.back();
    // Get.toNamed(
    //   AppRoutes.myAddressScreen,
    // );
  }

  /// Navigates to the myAddressScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the myAddressScreen.
  onTapYes() {
    Get.back();
    // Get.toNamed(
    //   AppRoutes.myAddressScreen,
    // );
  }
}
