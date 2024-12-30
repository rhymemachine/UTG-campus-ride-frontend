import '../onboarding_screen_five_screen/widgets/busservices_item_widget.dart';
import 'controller/onboarding_screen_five_controller.dart';
import 'models/busservices_item_model.dart';
import 'package:bustrackingapp/core/app_export.dart';
import 'package:bustrackingapp/widgets/custom_elevated_button.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreenFiveScreen
    extends GetWidget<OnboardingScreenFiveController> {
  const OnboardingScreenFiveScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.whiteA700,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                          alignment: Alignment.centerRight,
                          child: SizedBox(
                              height: getVerticalSize(464),
                              width: getHorizontalSize(385),
                              child: Stack(
                                  alignment: Alignment.bottomLeft,
                                  children: [
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgEllipse230280x278,
                                        height: getVerticalSize(280),
                                        width: getHorizontalSize(278),
                                        alignment: Alignment.topRight),
                                    Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Container(
                                            height: getVerticalSize(376),
                                            width: getHorizontalSize(333),
                                            margin: getMargin(bottom: 23),
                                            child: Stack(
                                                alignment:
                                                    Alignment.bottomRight,
                                                children: [
                                                  Opacity(
                                                      opacity: 0.5,
                                                      child: Align(
                                                          alignment:
                                                              Alignment.topLeft,
                                                          child: DottedBorder(
                                                              color: appTheme
                                                                  .black900
                                                                  .withOpacity(
                                                                      0.53),
                                                              padding: EdgeInsets.only(
                                                                  left: getHorizontalSize(
                                                                      1),
                                                                  top: getVerticalSize(
                                                                      1),
                                                                  right:
                                                                      getHorizontalSize(
                                                                          1),
                                                                  bottom:
                                                                      getVerticalSize(
                                                                          1)),
                                                              strokeWidth:
                                                                  getHorizontalSize(
                                                                      1),
                                                              radius:
                                                                  Radius.circular(24),
                                                              borderType: BorderType.RRect,
                                                              dashPattern: [6, 6],
                                                              child: Container(height: getVerticalSize(324), width: getHorizontalSize(285), decoration: BoxDecoration(borderRadius: BorderRadius.circular(getHorizontalSize(24))))))),
                                                  Align(
                                                      alignment:
                                                          Alignment.bottomRight,
                                                      child: Container(
                                                          height: getVerticalSize(
                                                              355),
                                                          width:
                                                              getHorizontalSize(
                                                                  312),
                                                          decoration: AppDecoration
                                                              .fillDeepOrange
                                                              .copyWith(
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .roundedBorder24),
                                                          child: CustomImageView(
                                                              imagePath: ImageConstant
                                                                  .imgImage355x312,
                                                              height:
                                                                  getVerticalSize(
                                                                      355),
                                                              width:
                                                                  getHorizontalSize(
                                                                      312),
                                                              radius: BorderRadius
                                                                  .circular(
                                                                      getHorizontalSize(24)),
                                                              alignment: Alignment.center))),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgCheckmark,
                                                      height: getSize(42),
                                                      width: getSize(42),
                                                      alignment:
                                                          Alignment.topRight,
                                                      margin: getMargin(
                                                          top: 7, right: 28))
                                                ]))),
                                    Align(
                                        alignment: Alignment.bottomRight,
                                        child: Container(
                                            height: getVerticalSize(36),
                                            width: getHorizontalSize(181),
                                            padding: getPadding(
                                                left: 11,
                                                top: 8,
                                                right: 11,
                                                bottom: 8),
                                            decoration: AppDecoration.fillRedA
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder7),
                                            child: CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgGroupWhiteA700,
                                                height: getVerticalSize(19),
                                                width: getHorizontalSize(155),
                                                alignment: Alignment.center)))
                                  ]))),
                      Padding(
                          padding: getPadding(left: 58, top: 57, right: 58),
                          child: Obx(() => CarouselSlider.builder(
                              options: CarouselOptions(
                                  height: getVerticalSize(133),
                                  initialPage: 0,
                                  autoPlay: true,
                                  viewportFraction: 1.0,
                                  enableInfiniteScroll: false,
                                  scrollDirection: Axis.horizontal,
                                  onPageChanged: (index, reason) {
                                    controller.sliderIndex.value = index;
                                  }),
                              itemCount: controller.onboardingScreenFiveModelObj
                                  .value.busservicesItemList.value.length,
                              itemBuilder: (context, index, realIndex) {
                                BusservicesItemModel model = controller
                                    .onboardingScreenFiveModelObj
                                    .value
                                    .busservicesItemList
                                    .value[index];
                                return BusservicesItemWidget(model);
                              }))),
                      Obx(() => Container(
                          height: getVerticalSize(8),
                          margin: getMargin(top: 27),
                          child: AnimatedSmoothIndicator(
                              activeIndex: controller.sliderIndex.value,
                              count: controller.onboardingScreenFiveModelObj
                                  .value.busservicesItemList.value.length,
                              axisDirection: Axis.horizontal,
                              effect: ScrollingDotsEffect(
                                  spacing: 8,
                                  activeDotColor: theme.colorScheme.primary,
                                  dotColor: appTheme.blueGray10001,
                                  dotHeight: getVerticalSize(8),
                                  dotWidth: getHorizontalSize(8))))),
                      CustomElevatedButton(
                          text: "lbl_next".tr,
                          margin: getMargin(left: 16, top: 24, right: 16),
                          onTap: () {
                            onTapNext();
                          }),
                      GestureDetector(
                          onTap: () {
                            onTapTxtSkip();
                          },
                          child: Padding(
                              padding: getPadding(top: 27, bottom: 5),
                              child: Text("lbl_skip".tr,
                                  style: CustomTextStyles
                                      .titleSmallErrorContainer_1)))
                    ]))));
  }

  /// Navigates to the onboardingScreenSixScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the onboardingScreenSixScreen.
  onTapNext() {
    Get.toNamed(
      AppRoutes.onboardingScreenSixScreen,
    );
  }

  /// Navigates to the onboardingScreenSixScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the onboardingScreenSixScreen.
  onTapTxtSkip() {
    Get.toNamed(
      AppRoutes.onboardingScreenSixScreen,
    );
  }
}
