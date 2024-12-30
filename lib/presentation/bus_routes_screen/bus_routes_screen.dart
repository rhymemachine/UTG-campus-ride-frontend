
import 'controller/bus_routes_controller.dart';
import 'package:bustrackingapp/core/app_export.dart';
import 'package:bustrackingapp/widgets/app_bar/appbar_image.dart';
import 'package:bustrackingapp/widgets/app_bar/appbar_image_1.dart';
import 'package:bustrackingapp/widgets/app_bar/appbar_title.dart';
import 'package:bustrackingapp/widgets/app_bar/custom_app_bar.dart';
import 'package:bustrackingapp/widgets/custom_elevated_button.dart';
import 'package:bustrackingapp/widgets/custom_icon_button.dart';
import 'package:bustrackingapp/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

import 'models/bus_routes_model.dart';

class BusRoutesScreen extends GetWidget<BusRoutesController> {
  const BusRoutesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
        backgroundColor: appTheme.whiteA700,
        body: SizedBox(
            width: double.maxFinite,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [

                  Container(
                      padding: getPadding(top: 20, bottom: 20),
                      decoration: AppDecoration.outlineOnPrimaryContainer,
                      child: CustomAppBar(
                          leadingWidth: getHorizontalSize(36),
                          leading: AppbarImage(
                              svgPath: ImageConstant.imgArrowleft,
                              margin:
                                  getMargin(left: 16, top: 3, bottom: 3),
                              onTap: () {
                                onTapArrowleftone();
                              }),
                          title: AppbarTitle(
                              text: "lbl_bus_01".tr,
                              margin: getMargin(left: 16)),
                          actions: [
                            AppbarImage1(
                                svgPath: ImageConstant.imgShare,
                                margin: getMargin(
                                    left: 16, top: 3, right: 16, bottom: 3),
                                onTap: () {
                                  onTapShareone(context);
                                })
                          ])),

                  Expanded(
                    child: Container(
                        padding: getPadding(
                            left: 16, top: 24, right: 16, bottom: 24),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [

                              Expanded(child: ListView(
                                padding: EdgeInsets.zero,
                                physics: BouncingScrollPhysics(),
                                children: [
                                  SizedBox(
                                      height: getVerticalSize(78),
                                      // width: getHorizontalSize(382),
                                      child: Stack(
                                          alignment: Alignment.centerRight,
                                          children: [
                                            Row(
                                              children: [
                                                Expanded(
                                                  child: Container(
                                                      padding: getPadding(
                                                          left: 0,
                                                          top: 0,
                                                          right: 0,
                                                          bottom: 0),
                                                      decoration: AppDecoration
                                                          .fillGray
                                                          .copyWith(
                                                          borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder16),
                                                      child: Column(
                                                        // mainAxisSize:
                                                        // MainAxisSize.min,
                                                          crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                          mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                          children: [
                                                            Text(
                                                                "msg_current_location"
                                                                    .tr,
                                                                style: theme
                                                                    .textTheme
                                                                    .bodyMedium),
                                                            Padding(
                                                                padding: getPadding(
                                                                    left: 4,
                                                                    top: 8),
                                                                child: Text(
                                                                    "lbl_washington"
                                                                        .tr,
                                                                    style: theme
                                                                        .textTheme
                                                                        .titleMedium))
                                                          ])),
                                                ),
                                                SizedBox(
                                                  width: getHorizontalSize(16),
                                                ),
                                                Expanded(
                                                  child: Container(
                                                      padding: getPadding(
                                                          left: 0,
                                                          top: 0,
                                                          right: 0,
                                                          bottom: 0),
                                                      decoration: AppDecoration
                                                          .fillGray
                                                          .copyWith(
                                                          borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder16),
                                                      child: Column(
                                                        // mainAxisSize:
                                                        // MainAxisSize.min,
                                                          mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                          crossAxisAlignment: CrossAxisAlignment.center,
                                                          children: [
                                                            Text(
                                                                "lbl_destination"
                                                                    .tr,
                                                                style: theme
                                                                    .textTheme
                                                                    .bodyMedium),
                                                            Padding(
                                                                padding: getPadding(
                                                                    top: 7),
                                                                child: Text(
                                                                    "lbl_manchester"
                                                                        .tr,
                                                                    style: theme
                                                                        .textTheme
                                                                        .titleMedium))
                                                          ])),
                                                ),
                                              ],
                                            ),

                                            CustomIconButton(
                                                height: getSize(40),
                                                width: getSize(40),
                                                padding: getPadding(all: 11),
                                                decoration: IconButtonStyleHelper
                                                    .outlineBlueGray,
                                                alignment: Alignment.center,
                                                child: CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgFrontofbus1))
                                          ])),
                                  Padding(
                                      padding: getPadding(top: 24),
                                      child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                                padding: getPadding(
                                                    left: 7,
                                                    top: 8,
                                                    right: 7,
                                                    bottom: 8),
                                                decoration: AppDecoration.white,
                                                child: Column(
                                                    mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                    children: [
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgClock,
                                                          height: getSize(24),
                                                          width: getSize(24)),
                                                      Container(
                                                          width:
                                                          getHorizontalSize(
                                                              101),
                                                          margin: getMargin(
                                                              top: 9, bottom: 2),
                                                          child: Text(
                                                              "msg_reach_station_at"
                                                                  .tr,
                                                              maxLines: 2,
                                                              overflow:
                                                              TextOverflow
                                                                  .ellipsis,
                                                              textAlign: TextAlign
                                                                  .center,
                                                              style: CustomTextStyles
                                                                  .bodyMediumBlack900
                                                                  .copyWith(
                                                                  height:
                                                                  1.50)))
                                                    ])),
                                            Container(
                                                padding: getPadding(
                                                    left: 23,
                                                    top: 8,
                                                    right: 23,
                                                    bottom: 8),
                                                decoration: AppDecoration.white,
                                                child: Column(
                                                    mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                    children: [
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgCar,
                                                          height: getSize(24),
                                                          width: getSize(24)),
                                                      Container(
                                                          width:
                                                          getHorizontalSize(
                                                              69),
                                                          margin: getMargin(
                                                              top: 9, bottom: 2),
                                                          child: Text(
                                                              "msg_50_minutes_travel"
                                                                  .tr,
                                                              maxLines: 2,
                                                              overflow:
                                                              TextOverflow
                                                                  .ellipsis,
                                                              textAlign: TextAlign
                                                                  .center,
                                                              style: CustomTextStyles
                                                                  .bodyMediumBlack900
                                                                  .copyWith(
                                                                  height:
                                                                  1.50)))
                                                    ])),
                                            Container(
                                                padding: getPadding(
                                                    left: 29,
                                                    top: 8,
                                                    right: 29,
                                                    bottom: 8),
                                                decoration: AppDecoration.white,
                                                child: Column(
                                                    mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                    children: [
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgBag,
                                                          height: getSize(24),
                                                          width: getSize(24)),
                                                      Container(
                                                          width:
                                                          getHorizontalSize(
                                                              57),
                                                          margin: getMargin(
                                                              top: 9, bottom: 2),
                                                          child: Text(
                                                              "msg_available_seats"
                                                                  .tr,
                                                              maxLines: 2,
                                                              overflow:
                                                              TextOverflow
                                                                  .ellipsis,
                                                              textAlign: TextAlign
                                                                  .center,
                                                              style: CustomTextStyles
                                                                  .bodyMediumBlack900
                                                                  .copyWith(
                                                                  height:
                                                                  1.50)))
                                                    ]))
                                          ])),
                                  Padding(
                                      padding: getPadding(top: 16),
                                      child:
                                      Divider(color: appTheme.blueGray100)),
                                  Padding(
                                    padding: getPadding(top: 24),
                                    child: Row(children: [
                                      CustomIconButton(
                                          height: getSize(36),
                                          width: getSize(36),
                                          padding: getPadding(all: 8),
                                          decoration:
                                          IconButtonStyleHelper
                                              .outlineBlueGray,
                                          child: CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgCar)),
                                      Padding(
                                          padding: getPadding(
                                              left: 12,
                                              top: 9,
                                              bottom: 8),
                                          child: Text(
                                              "msg_bus_01_from_washington"
                                                  .tr,
                                              style: theme.textTheme
                                                  .titleMedium))
                                    ]),
                                  ),
                                  Padding(
                                    padding: getPadding(left: 8),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          height: getVerticalSize(30),
                                          width:
                                          getSize(
                                              18),
                                          child: VerticalDivider(
                                              width:
                                              getHorizontalSize(
                                                  2),
                                              thickness:
                                              getVerticalSize(
                                                  2),
                                              color: theme.colorScheme.primary),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                      // height: getVerticalSize(279),
                                      // width: getHorizontalSize(382),
                                      // margin: getMargin(top: 24),
                                      child: Stack(
                                          // alignment: Alignment.topLeft,
                                          children: [

                                            // Padding(
                                            //     padding: getPadding(
                                            //         left: 13, bottom: 5),
                                            //     child: Row(
                                            //         crossAxisAlignment:
                                            //         CrossAxisAlignment
                                            //             .start,
                                            //         mainAxisAlignment: MainAxisAlignment.start,
                                            //         children: [
                                            //           SizedBox(
                                            //               height:
                                            //               getVerticalSize(
                                            //                   243),
                                            //               child: ),
                                            //           // SizedBox(
                                            //           //     height:
                                            //           //     getVerticalSize(
                                            //           //         30),
                                            //           //     child: VerticalDivider(
                                            //           //         width:
                                            //           //         getHorizontalSize(
                                            //           //             2),
                                            //           //         thickness:
                                            //           //         getVerticalSize(
                                            //           //             2),
                                            //           //         color: theme
                                            //           //             .colorScheme
                                            //           //             .primary,
                                            //           //         // endIndent:
                                            //           //         // getHorizontalSize(
                                            //           //         //     201)
                                            //           //     ))
                                            //         ])),



                                            Padding(
                                                padding: getPadding(left: 8,top: 0),
                                                child: ListView.separated(
                                                  shrinkWrap: true,
                                                    physics: NeverScrollableScrollPhysics(),
                                                    padding: EdgeInsets.zero,
                                                    itemBuilder: (context, index) {
                                                      BusRoutesModel model = controller.routeList[index];

                                                      return Row(
                                                          mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                          children: [
                                                            Container(
                                                                height:
                                                                getSize(
                                                                    18),
                                                                width:
                                                                getSize(
                                                                    18),
                                                                decoration: BoxDecoration(
                                                                    color: (index == 0)?theme
                                                                        .colorScheme
                                                                        .primary:appTheme.blueGray10001,
                                                                    borderRadius:
                                                                    BorderRadius.circular(
                                                                        getHorizontalSize(9)))),
                                                            Padding(
                                                                padding:
                                                                getPadding(
                                                                    left:
                                                                    18),
                                                                child: Text(
                                                                    model.location ?? "",
                                                                    style: theme
                                                                        .textTheme
                                                                        .bodyLarge)),
                                                            Spacer(),
                                                            Text(
                                                                model.time ?? "",
                                                                style: CustomTextStyles
                                                                    .bodyMediumBlack900)
                                                          ]);
                                                    }, separatorBuilder: (context, index) {
                                                  return Row(
                                                      mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .start,
                                                      children: [
                                                        SizedBox(
                                                          height: getVerticalSize(24),
                                                          width:
                                                          getSize(
                                                              18),
                                                          child: VerticalDivider(
                                                              width:
                                                              getHorizontalSize(
                                                                  2),
                                                              thickness:
                                                              getVerticalSize(
                                                                  2),
                                                              color: appTheme
                                                                  .blueGray10001),
                                                        )
                                                      ]);
                                                }, itemCount: controller.routeList.length)),


                                            // Align(
                                            //     alignment: Alignment.bottomCenter,
                                            //     child: Padding(
                                            //         padding: getPadding(left: 8),
                                            //         child: Column(
                                            //             mainAxisSize:
                                            //             MainAxisSize.min,
                                            //             mainAxisAlignment:
                                            //             MainAxisAlignment
                                            //                 .start,
                                            //             children: [
                                            //               Row(
                                            //                   mainAxisAlignment:
                                            //                   MainAxisAlignment
                                            //                       .center,
                                            //                   children: [
                                            //                     Container(
                                            //                         height:
                                            //                         getSize(
                                            //                             18),
                                            //                         width:
                                            //                         getSize(
                                            //                             18),
                                            //                         decoration: BoxDecoration(
                                            //                             color: theme
                                            //                                 .colorScheme
                                            //                                 .primary,
                                            //                             borderRadius:
                                            //                             BorderRadius.circular(
                                            //                                 getHorizontalSize(9)))),
                                            //                     Padding(
                                            //                         padding:
                                            //                         getPadding(
                                            //                             left:
                                            //                             18),
                                            //                         child: Text(
                                            //                             "lbl_washington2"
                                            //                                 .tr,
                                            //                             style: theme
                                            //                                 .textTheme
                                            //                                 .bodyLarge)),
                                            //                     Spacer(),
                                            //                     Text(
                                            //                         "lbl_5_50_p_m"
                                            //                             .tr,
                                            //                         style: CustomTextStyles
                                            //                             .bodyMediumBlack900)
                                            //                   ]),
                                            //               Padding(
                                            //                   padding: getPadding(
                                            //                       top: 28),
                                            //                   child: Row(
                                            //                       mainAxisAlignment:
                                            //                       MainAxisAlignment
                                            //                           .center,
                                            //                       children: [
                                            //                         Container(
                                            //                             height:
                                            //                             getSize(
                                            //                                 18),
                                            //                             width:
                                            //                             getSize(
                                            //                                 18),
                                            //                             decoration: BoxDecoration(
                                            //                                 color: appTheme
                                            //                                     .blueGray10001,
                                            //                                 borderRadius:
                                            //                                 BorderRadius.circular(getHorizontalSize(9)))),
                                            //                         Padding(
                                            //                             padding: getPadding(
                                            //                                 left:
                                            //                                 18),
                                            //                             child: Text(
                                            //                                 "lbl_delaware"
                                            //                                     .tr,
                                            //                                 style: theme
                                            //                                     .textTheme
                                            //                                     .bodyLarge)),
                                            //                         Spacer(),
                                            //                         Padding(
                                            //                             padding: getPadding(
                                            //                                 top:
                                            //                                 3),
                                            //                             child: Text(
                                            //                                 "msg_next_stop_6_15_p"
                                            //                                     .tr,
                                            //                                 style:
                                            //                                 CustomTextStyles.bodyMediumBlack900))
                                            //                       ])),
                                            //               Padding(
                                            //                   padding: getPadding(
                                            //                       top: 29),
                                            //                   child: Row(
                                            //                       mainAxisAlignment:
                                            //                       MainAxisAlignment
                                            //                           .center,
                                            //                       children: [
                                            //                         Container(
                                            //                             height:
                                            //                             getSize(
                                            //                                 18),
                                            //                             width:
                                            //                             getSize(
                                            //                                 18),
                                            //                             decoration: BoxDecoration(
                                            //                                 color: appTheme
                                            //                                     .blueGray10001,
                                            //                                 borderRadius:
                                            //                                 BorderRadius.circular(getHorizontalSize(9)))),
                                            //                         Padding(
                                            //                             padding: getPadding(
                                            //                                 left:
                                            //                                 18),
                                            //                             child: Text(
                                            //                                 "lbl_thornridge"
                                            //                                     .tr,
                                            //                                 style: theme
                                            //                                     .textTheme
                                            //                                     .bodyLarge)),
                                            //                         Spacer(),
                                            //                         Text(
                                            //                             "lbl_6_30_p_m"
                                            //                                 .tr,
                                            //                             style: CustomTextStyles
                                            //                                 .bodyMediumBlack900)
                                            //                       ])),
                                            //               Padding(
                                            //                   padding: getPadding(
                                            //                       top: 29),
                                            //                   child: Row(
                                            //                       mainAxisAlignment:
                                            //                       MainAxisAlignment
                                            //                           .center,
                                            //                       children: [
                                            //                         Container(
                                            //                             height:
                                            //                             getSize(
                                            //                                 18),
                                            //                             width:
                                            //                             getSize(
                                            //                                 18),
                                            //                             decoration: BoxDecoration(
                                            //                                 color: appTheme
                                            //                                     .blueGray10001,
                                            //                                 borderRadius:
                                            //                                 BorderRadius.circular(getHorizontalSize(9)))),
                                            //                         Padding(
                                            //                             padding: getPadding(
                                            //                                 left:
                                            //                                 18),
                                            //                             child: Text(
                                            //                                 "lbl_syracuse"
                                            //                                     .tr,
                                            //                                 style: theme
                                            //                                     .textTheme
                                            //                                     .bodyLarge)),
                                            //                         Spacer(),
                                            //                         Text(
                                            //                             "lbl_6_35_p_m"
                                            //                                 .tr,
                                            //                             style: CustomTextStyles
                                            //                                 .bodyMediumBlack900)
                                            //                       ])),
                                            //               Padding(
                                            //                   padding: getPadding(
                                            //                       top: 28),
                                            //                   child: Row(
                                            //                       mainAxisAlignment:
                                            //                       MainAxisAlignment
                                            //                           .center,
                                            //                       children: [
                                            //                         Container(
                                            //                             height:
                                            //                             getSize(
                                            //                                 18),
                                            //                             width:
                                            //                             getSize(
                                            //                                 18),
                                            //                             decoration: BoxDecoration(
                                            //                                 color: appTheme
                                            //                                     .blueGray10001,
                                            //                                 borderRadius:
                                            //                                 BorderRadius.circular(getHorizontalSize(9)))),
                                            //                         Padding(
                                            //                             padding: getPadding(
                                            //                                 left:
                                            //                                 18),
                                            //                             child: Text(
                                            //                                 "lbl_manchester"
                                            //                                     .tr,
                                            //                                 style: theme
                                            //                                     .textTheme
                                            //                                     .bodyLarge)),
                                            //                         Spacer(),
                                            //                         Text(
                                            //                             "lbl_6_40_p_m"
                                            //                                 .tr,
                                            //                             style: CustomTextStyles
                                            //                                 .bodyMediumBlack900)
                                            //                       ]))
                                            //             ])))


                                          ])),
                                ],
                              )),
                              CustomOutlinedButton(
                                  height: getVerticalSize(56),
                                  text: "lbl_see_on_map".tr,
                                  margin: getMargin(top: 88),
                                  // buttonStyle: ButtonStyle(
                                  //   shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                                  //     side: BorderSide(color: Colors.black)
                                  //   ))
                                  // ),
                                  buttonStyle: OutlinedButton.styleFrom(
                                    side: BorderSide(width: 2, color: appTheme.black900),
                                  ),
                                  onTap: () {
                                    onTapSeeonmap();
                                  }),
                              CustomElevatedButton(
                                  text: "lbl_take_ride".tr,
                                  margin: getMargin(top: 16, bottom: 8),
                                  onTap: () {
                                    onTapTakeride();
                                  })
                            ])),
                  )

                ])));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] package to
  /// navigate to the previous screen in the navigation stack.
  onTapArrowleftone() {
    Get.back();
  }

  /// Navigates to the shareRideScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the shareRideScreen.
  onTapShareone(BuildContext context) {

    Get.toNamed(
      AppRoutes.mapScreen,
      arguments: true
    );

    // Get.toNamed(
    //   AppRoutes.shareRideScreen,
    // );
  }

  /// Navigates to the mapScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the mapScreen.
  onTapSeeonmap() {
    Get.toNamed(
      AppRoutes.mapScreen,
        arguments: false
    );
  }

  /// Navigates to the mapScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the mapScreen.
  onTapTakeride() {
    Get.toNamed(
      AppRoutes.mapScreen,
        arguments: false
    );
  }
}
