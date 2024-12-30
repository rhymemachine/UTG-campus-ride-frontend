import 'package:bustrackingapp/presentation/refund_package_page/refund_package_page.dart';

import 'controller/refund_package_tab_container_controller.dart';
import 'package:bustrackingapp/core/app_export.dart';
import 'package:bustrackingapp/presentation/refund_ticket_page/refund_ticket_page.dart';
import 'package:bustrackingapp/widgets/app_bar/appbar_image.dart';
import 'package:bustrackingapp/widgets/app_bar/appbar_title.dart';
import 'package:bustrackingapp/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class RefundPackageTabContainerScreen
    extends GetWidget<RefundPackageTabContainerController> {
  const RefundPackageTabContainerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return DefaultTabController(
      length: 2,
      child: Scaffold(
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
                                text: "lbl_refund".tr,
                                margin: getMargin(left: 16)))),
                    Expanded(
                      flex: 1,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: double.infinity,
                                // height: getVerticalSize(31),
                                // width: getHorizontalSize(382),
                                margin: getMargin(top: 24),
                                child: Padding(
                                  padding: getPadding(left: 16,right: 16),
                                  child: Stack(
                                    fit: StackFit.passthrough,
                                    alignment: Alignment.bottomCenter,

                                    children: [
                                      Container(
                                        height: 2.5,
                                        decoration: BoxDecoration(
                                          border: Border(
                                            bottom: BorderSide(color: appTheme.gray100, width: 2.5),
                                          ),
                                        ),
                                      ),
                                      TabBar(
                                          controller: controller.tabviewController,
                                          // isScrollable: true,
                                          labelColor: theme.colorScheme.primary,
                                          unselectedLabelColor: appTheme.gray500,
                                          indicatorColor:
                                              theme.colorScheme.primary,
                                          tabs: [
                                            Tab(child: Text("lbl_my_package".tr)),
                                            Tab(child: Text("lbl_my_tickets".tr))
                                          ]),
                                    ],
                                  ),
                                )),
                             // Expanded(child: Container())
                            Expanded(
                                child: SizedBox(
                                    // height: getVerticalSize(725),
                                    child: TabBarView(
                                        controller:
                                            controller.tabviewController,
                                        children: [
                                          RefundPackagePage(),
                                          RefundTicketPage()
                                        ])))
                          ]),
                    )
                  ]))),
    );
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] package to
  /// navigate to the previous screen in the navigation stack.
  onTapArrowleftone() {
    Get.back();
  }
}
