import 'package:bustrackingapp/widgets/custom_dotted_line.dart';

import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'controller/home_search_controller.dart';
import 'package:bustrackingapp/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:bustrackingapp/presentation/recommended_routes_screen/controller/recommended_routes_controller.dart';
// ignore_for_file: must_be_immutable
class HomeSearchScreen extends GetWidget<HomeSearchController> {
  HomeSearchScreen({Key? key})
      : super(
          key: key,
        );
  HomeSearchController controller = Get.put(HomeSearchController());
   RecommendedRoutesController recommendedcontroller = Get.put(RecommendedRoutesController());
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Padding(
      padding: mediaQueryData.viewInsets,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        // alignment: Alignment.bottomCenter,
        children: [

          Container(
            padding: getPadding(
              left: 16,
              top: 34,
              right: 16,
              bottom: 34,
            ),
            decoration: AppDecoration.outlineBlack.copyWith(
              borderRadius: BorderRadiusStyle.customBorderTL24,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: getPadding(
                    top: 2,
                  ),
                  child: Text(
                    "msg_where_would_you".tr,
                    style: theme.textTheme.headlineSmall,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 36,
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: getVerticalSize(102),
                        width: getHorizontalSize(24),
                        // color: Colors.grey,
                        margin: getMargin(
                          top: 15,
                          bottom: 15,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          // alignment: Alignment.bottomCenter,
                          children: [
                            CustomImageView(
                              svgPath: ImageConstant.imgLocationGray900,
                              height: getSize(24),
                              width: getSize(24),
                              alignment: Alignment.topCenter,
                            ),
                            Expanded(
                              child: SizedBox(
                                height: double.infinity,
                                // height: getVerticalSize(60),
                                child: FDottedLine(
                                  color: appTheme.gray900,
                                  width: getHorizontalSize(1),
                                ),
                                // child: VerticalDivider(
                                //   width: getHorizontalSize(1),
                                //   thickness: getVerticalSize(1),
                                //   color: appTheme.gray900,
                                // ),
                              ),
                            ),
                            CustomImageView(
                              svgPath: ImageConstant.imgIcgps,
                              height: getSize(24),
                              width: getSize(24),
                              alignment: Alignment.bottomCenter,
                            ),

                          ],
                        ),
                      ),

                      Expanded(
                        child: Padding(
                          padding: getPadding(
                            left: 12,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomTextFormField(
                                controller: controller.locationController,
                                hintText: "msg_enter_your_location".tr,
                                hintStyle: CustomTextStyles
                                    .bodyLargeErrorContainer,
                                contentPadding: getPadding(
                                  left: 12,
                                  top: 18,
                                  right: 12,
                                  bottom: 18,
                                ),
                              ),
                              CustomTextFormField(
                                controller:
                                controller.actiononeController,
                                margin: getMargin(
                                  top: 24,
                                ),
                                hintText: "lbl_where_to_go".tr,
                                hintStyle: CustomTextStyles
                                    .bodyLargeErrorContainer,
                                textInputAction: TextInputAction.done,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                CustomElevatedButton(
                  text: "lbl_find_bus".tr,
                  onTap: () async {
                    await recommendedcontroller.fetchPickupPoints();
                    Get.toNamed(AppRoutes.recommendedRoutesScreen);
                  },
                  margin: getMargin(
                    top: 34,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
