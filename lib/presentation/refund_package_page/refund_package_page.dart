import 'package:bustrackingapp/presentation/refund_request_successfully_screen/refund_request_successfully_screen.dart';
import 'package:bustrackingapp/widgets/widget_utils.dart';

import '../refund_package_page/widgets/refund_package_item_widget.dart';
import 'controller/refund_package_controller.dart';
import 'models/refund_package_item_model.dart';
import 'models/refund_package_model.dart';
import 'package:bustrackingapp/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class RefundPackagePage extends StatelessWidget {
  RefundPackagePage({Key? key}) : super(key: key);

  RefundPackageController controller =
      Get.put(RefundPackageController(RefundPackageModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Container(
        width: double.maxFinite,
        decoration: AppDecoration.white,
        child: Padding(
            padding: getPadding(left: 16, top: 24, right: 16),
            child: Obx(() => ListView.separated(
              padding: EdgeInsets.zero,
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                 return SizedBox(height: getVerticalSize(16));
                },
                itemCount: controller.refundPackageModelObj.value
                    .refundPackageItemList.value.length,
                itemBuilder: (context, index) {
                 RefundPackageItemModel model = controller
                     .refundPackageModelObj
                     .value
                     .refundPackageItemList
                     .value[index];
                 return RefundPackageItemWidget(model,
                     onTapContinuefor: () {
                      onTapContinuefor(context);
                     });
                }))));
  }

  /// Navigates to the refundRequestSuccessfullyScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the refundRequestSuccessfullyScreen.
  onTapContinuefor(BuildContext context) {

    showCommonDialog(context: context, widget: RefundRequestSuccessfullyScreen());


    // Get.toNamed(
    //   AppRoutes.refundRequestSuccessfullyScreen,
    // );
  }
}
