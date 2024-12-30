import 'package:bustrackingapp/presentation/home_search_screen/home_search_screen.dart';
import 'package:bustrackingapp/widgets/custom_map_view.dart';
import 'controller/home_controller.dart';
import 'models/home_model.dart';
import 'package:bustrackingapp/core/app_export.dart';
import 'package:bustrackingapp/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({Key? key})
      : super(
          key: key,
        );

  HomeController controller = Get.put(HomeController(HomeModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return WillPopScope(
      onWillPop: () async {
        exitApp();
        return false;
      },
      child: Scaffold(
        // appBar: AppBar(
        //   toolbarHeight: 0,
        //   elevation: 0,
        //   backgroundColor: Colors.transparent,
        // ),
        resizeToAvoidBottomInset: true,
        backgroundColor: Colors.transparent,
        body: SizedBox(
          // height: getVerticalSize(773),
          // width: double.maxFinite,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              CustomMapView(
                height: double.infinity,
                width: double.infinity,
                alignment: Alignment.topCenter,
              ),
              Align(
                alignment: Alignment.center,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Container(
                        margin: getMargin(
                          top: 24,
                        ),
                        padding: getPadding(
                          left: 16,
                          right: 16,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            AppBar(
                              toolbarHeight: 0,
                              elevation: 0,
                              backgroundColor: Colors.transparent,
                            ),
                            CustomSearchView(
                              controller: controller.searchController,
                              hintText: "lbl_where_to".tr,
                              hintStyle:
                                  CustomTextStyles.bodyLargeErrorContainer,
                              prefix: Container(
                                margin: getMargin(
                                  left: 16,
                                  top: 17,
                                  right: 14,
                                  bottom: 17,
                                ),
                                child: CustomImageView(
                                  svgPath: ImageConstant.imgIcSearch,
                                ),
                              ),
                              prefixConstraints: BoxConstraints(
                                maxHeight: getVerticalSize(54),
                              ),
                              // suffix: Container(),
                              enabled: false,
                              onTap: (){

                                print("called----bottomsheet");

                                showModalBottomSheet(context: context,
                                  isScrollControlled: true,
                                  backgroundColor: appTheme.whiteA700,
                                  barrierColor: Colors.transparent,
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topRight: Radius.circular(getHorizontalSize(32)),topLeft: Radius.circular(getHorizontalSize(32)))),
                                  builder: (context) {
                                  return HomeSearchScreen();
                                },);
                              },
                            ),
                            Spacer(),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
        // floatingActionButton: CustomFloatingButton(
        //   height: 54,
        //   width: 54,
        //   child: Icon(
        //     Icons.add,
        //   ),
        // ),
      ),
    );
  }
}
