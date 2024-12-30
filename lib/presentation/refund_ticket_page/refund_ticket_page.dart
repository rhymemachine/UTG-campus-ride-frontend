import '../../widgets/widget_utils.dart';
import '../refund_request_successfully_screen/refund_request_successfully_screen.dart';
import '../refund_ticket_page/widgets/ticket_item_widget.dart';
import 'controller/refund_ticket_controller.dart';
import 'models/refund_ticket_model.dart';
import 'models/ticket_item_model.dart';
import 'package:bustrackingapp/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class RefundTicketPage extends StatelessWidget {
  RefundTicketPage({Key? key}) : super(key: key);

  RefundTicketController controller =
      Get.put(RefundTicketController(RefundTicketModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SizedBox(
        width: mediaQueryData.size.width,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                  child: SizedBox(
                      width: double.maxFinite,
                      child: Padding(
                          padding:
                          getPadding(left: 16, top: 24, right: 16),
                          child: Column(
                              mainAxisAlignment:
                              MainAxisAlignment.start,
                              children: [
                                Expanded(
                                    child: Obx(() => ListView.separated(
                                      padding: EdgeInsets.zero,
                                        physics:
                                        BouncingScrollPhysics(),
                                        shrinkWrap: true,
                                        separatorBuilder:
                                            (context, index) {
                                          return SizedBox(
                                              height:
                                              getVerticalSize(16));
                                        },
                                        itemCount: controller
                                            .refundTicketModelObj
                                            .value
                                            .ticketItemList
                                            .value
                                            .length,
                                        itemBuilder: (context, index) {
                                          TicketItemModel model =
                                          controller
                                              .refundTicketModelObj
                                              .value
                                              .ticketItemList
                                              .value[index];
                                          return TicketItemWidget(model,
                                              onTapContinuefor: () {
                                                onTapContinuefor(context);
                                              });
                                        }))),
                                Container(
                                    height: getVerticalSize(8),
                                    width: getHorizontalSize(382),
                                    margin: getMargin(top: 16),
                                    decoration: BoxDecoration(
                                        color: appTheme.gray100,
                                        borderRadius:
                                        BorderRadius.circular(
                                            getHorizontalSize(4))))
                              ]))))
            ]));
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
