import 'package:bustrackingapp/core/app_export.dart';
import 'package:bustrackingapp/presentation/refund_package_tab_container_screen/models/refund_package_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the RefundPackageTabContainerScreen.
///
/// This class manages the state of the RefundPackageTabContainerScreen, including the
/// current refundPackageTabContainerModelObj
class RefundPackageTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<RefundPackageTabContainerModel> refundPackageTabContainerModelObj =
      RefundPackageTabContainerModel().obs;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 2));
}
