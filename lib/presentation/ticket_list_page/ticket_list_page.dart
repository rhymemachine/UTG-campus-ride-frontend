import 'package:bustrackingapp/presentation/home_container_screen/controller/home_container_controller.dart';

import '../ticket_list_page/widgets/bustrip_item_widget.dart';
import 'controller/ticket_list_controller.dart';
import 'models/bustrip_item_model.dart';
import 'models/ticket_list_model.dart';
import 'package:bustrackingapp/core/app_export.dart';
import 'package:bustrackingapp/widgets/app_bar/appbar_title.dart';
import 'package:bustrackingapp/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class TicketListPage extends StatelessWidget {
  TicketListPage({Key? key}) : super(key: key);

  TicketListController controller =
      Get.put(TicketListController(TicketListModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return WillPopScope(
      onWillPop: () async {

        HomeContainerController homeContainerController = Get.put(HomeContainerController());

        homeContainerController.selectedIndex.value = 0;

        return false;
      },
      child: Scaffold(
          backgroundColor: appTheme.whiteA700,
          body: Container(
              width: double.maxFinite,
              decoration: AppDecoration.white,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                        padding: getPadding(top: 19, bottom: 19),
                        decoration: AppDecoration.outlineOnPrimaryContainer,
                        child: CustomAppBar(
                            title: AppbarTitle(
                                text: "lbl_ticket".tr,
                                margin: getMargin(left: 16)))),
                    Expanded(
                        child: SizedBox(
                            width: double.maxFinite,
                            child: Container(
                                padding: getPadding(left: 16, right: 16),
                                child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.start,
                                    children: [

                                      Expanded(
                                          child: Padding(
                                              padding: getPadding(top: 24),
                                              child: Obx(() =>
                                                  ListView.separated(
                                                    padding: EdgeInsets.zero,
                                                      // physics: NeverScrollableScrollPhysics(),
                                                      shrinkWrap: true,
                                                      separatorBuilder:
                                                          (context, index) {
                                                        return SizedBox(
                                                            height:
                                                                getVerticalSize(
                                                                    16));
                                                      },
                                                      itemCount: controller
                                                          .ticketListModelObj
                                                          .value
                                                          .bustripItemList
                                                          .value
                                                          .length,
                                                      itemBuilder:
                                                          (context, index) {
                                                        BustripItemModel
                                                            model = controller
                                                                .ticketListModelObj
                                                                .value
                                                                .bustripItemList
                                                                .value[index];
                                                        return BustripItemWidget(
                                                            model,
                                                            onTapBustrip: () {
                                                          onTapBustrip();
                                                        },index: index,);
                                                      })))),

                                      // Container(
                                      //     margin: getMargin(top: 16),
                                      //     padding: getPadding(
                                      //         left: 18,
                                      //         top: 15,
                                      //         right: 18,
                                      //         bottom: 15),
                                      //     decoration: AppDecoration.fillGray
                                      //         .copyWith(
                                      //             borderRadius:
                                      //                 BorderRadiusStyle
                                      //                     .roundedBorder16),
                                      //     child: Row(
                                      //         mainAxisAlignment:
                                      //             MainAxisAlignment.center,
                                      //         crossAxisAlignment:
                                      //             CrossAxisAlignment.end,
                                      //         children: [
                                      //           Padding(
                                      //               padding:
                                      //                   getPadding(top: 3),
                                      //               child: Text(
                                      //                   "lbl_bus_03".tr,
                                      //                   style: CustomTextStyles
                                      //                       .titleMediumErrorContainer)),
                                      //           Spacer(flex: 52),
                                      //           Padding(
                                      //               padding:
                                      //                   getPadding(top: 5),
                                      //               child: Text(
                                      //                   "lbl_08_km".tr,
                                      //                   style: CustomTextStyles
                                      //                       .titleSmallErrorContainer)),
                                      //           Spacer(flex: 47),
                                      //           Padding(
                                      //               padding:
                                      //                   getPadding(top: 2),
                                      //               child: Text(
                                      //                   "lbl_20_00".tr,
                                      //                   style: CustomTextStyles
                                      //                       .titleMediumErrorContainerBold))
                                      //         ]))
                                    ]))))
                  ]))),
    );
  }

  /// Navigates to the ticketScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the ticketScreen.
  onTapBustrip() {
    Get.toNamed(
      AppRoutes.ticketScreen,
    );
  }
}
