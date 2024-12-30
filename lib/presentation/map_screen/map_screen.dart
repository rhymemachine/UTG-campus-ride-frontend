// ignore_for_file: must_be_immutable

import '../../widgets/app_bar/appbar_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import 'package:bustrackingapp/core/app_export.dart';
import 'package:bustrackingapp/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

import '../share_ride_screen/share_ride_screen.dart';

class MapScreen extends StatefulWidget {
  bool? isShare;
  MapScreen({Key? key,this.isShare}) : super(key: key);

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  bool share = Get.arguments;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();


    if(share){
      WidgetsBinding.instance.addPostFrameCallback((_) async {
        showModalBottomSheet(context: context,
          isScrollControlled: true,
          backgroundColor: appTheme.whiteA700,
          barrierColor: Colors.transparent,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topRight: Radius.circular(getHorizontalSize(32)),topLeft: Radius.circular(getHorizontalSize(32)))),
          builder: (context) {
            return ShareRideScreen();
          },);
      });
    }


  }

  @override
  Widget build(BuildContext context) {


    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        backgroundColor: appTheme.whiteA700,
        body: Container(
            width: mediaQueryData.size.width,
            height: mediaQueryData.size.height,
            decoration: BoxDecoration(
                color: appTheme.whiteA700,
                image: DecorationImage(
                    image: AssetImage(ImageConstant.map1),
                    fit: BoxFit.cover)
            ),
            child: SizedBox(
                width: double.maxFinite,
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          padding: getPadding(top: 20, bottom: 20),
                          decoration:
                          AppDecoration.outlineOnPrimaryContainer1.copyWith(
                              color: appTheme.whiteA700
                          ),
                          child: CustomAppBar(
                              leadingWidth: getHorizontalSize(36),
                              leading: AppbarImage(
                                  svgPath: ImageConstant.imgArrowleft,
                                  margin:
                                  getMargin(left: 16, top: 3, bottom: 3),
                                  onTap: () {
                                    onTapBus01();
                                  }),
                              title: AppbarTitle(
                                  text: "lbl_bus_01".tr,
                                  margin: getMargin(left: 16)))),
                      // Expanded(
                      //   flex: 1,
                      //   child: Container(
                      //       // height: getVerticalSize(784),
                      //       width: double.maxFinite,
                      //       padding: getPadding(
                      //           // left: 106, top: 230, right: 106, bottom: 194),
                      //           left: 106, top: 194, right: 106, bottom: 194),
                      //       // decoration: BoxDecoration(
                      //       //     color: appTheme.whiteA700,
                      //       //     image: DecorationImage(
                      //       //         image: AssetImage(ImageConstant.imgHomesearchfilled),
                      //       //         fit: BoxFit.cover)
                      //       // ),
                      //       child: Stack(
                      //           alignment: Alignment.bottomLeft,
                      //           children: [
                      //             CustomImageView(
                      //                 svgPath: ImageConstant.imgVector2,
                      //                 height: getVerticalSize(249),
                      //                 width: getHorizontalSize(116),
                      //                 alignment: Alignment.bottomCenter,
                      //                 margin: getMargin(bottom: 44)),
                      //             CustomIconButton(
                      //                 height: getSize(50),
                      //                 width: getSize(50),
                      //                 padding: getPadding(all: 13),
                      //                 decoration: IconButtonStyleHelper
                      //                     .outlineBlackTL25,
                      //                 alignment: Alignment.bottomLeft,
                      //                 child: CustomImageView(
                      //                     svgPath: ImageConstant.imgTrophy)),
                      //             CustomIconButton(
                      //                 height: getSize(34),
                      //                 width: getSize(34),
                      //                 margin: getMargin(top: 71, right: 67),
                      //                 padding: getPadding(all: 8),
                      //                 alignment: Alignment.topRight,
                      //                 child: CustomImageView(
                      //                     svgPath: ImageConstant
                      //                         .imgSignalBlack900))
                      //           ])),
                      // )

                    ]))));
  }

  /// Navigates to the busRoutesScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the busRoutesScreen.
  onTapBus01() {
    Get.back();
    // Get.toNamed(
    //   AppRoutes.busRoutesScreen,
    // );
  }
}

