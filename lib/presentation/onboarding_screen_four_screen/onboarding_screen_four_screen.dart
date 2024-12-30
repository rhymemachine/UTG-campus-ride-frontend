import 'package:bustrackingapp/presentation/onboarding_screen_four_screen/widgets/slider_item_widget.dart';

import 'controller/onboarding_screen_four_controller.dart';
import 'package:bustrackingapp/core/app_export.dart';
import 'package:bustrackingapp/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'models/slider_item_model.dart';

class OnboardingScreenFourScreen
    extends GetWidget<OnboardingScreenFourController> {
  const OnboardingScreenFourScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
        backgroundColor: appTheme.whiteA700,
        body: SizedBox(
            width: double.maxFinite,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              Expanded(
                  child: Container(
                child: PageView.builder(
                  controller: controller.pageController,
                  onPageChanged: (value) {
                    controller.sliderIndex.value = value;
                  },
                  itemCount: controller.onboardingScreenFourModelObj.value
                      .sliderItemList.value.length,
                  itemBuilder: (context, index) {
                    SliderItemModel introModel = controller
                        .onboardingScreenFourModelObj
                        .value
                        .sliderItemList
                        .value[index];
                    return Column(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(introModel.image ?? ""),
                              ),
                            ),
                            // child: CustomImageView(
                            //     imagePath: ImageConstant.imgMaskgroup,
                            //     // height: getVerticalSize(446),
                            //     width: getHorizontalSize(414))
                          ),
                        ),
                        Padding(
                            padding: getPadding(
                              top: 0,
                            ),
                            child: Builder(
                              builder: (BuildContext context) {
                                SliderItemModel model = controller
                                    .onboardingScreenFourModelObj
                                    .value
                                    .sliderItemList
                                    .value[index];
                                return SliderItemWidget(model);
                              },
                            )),
                      ],
                    );
                  },
                ),
              )),
              Obx(() => Container(
                  height: getVerticalSize(8),
                  margin: getMargin(top: 24),
                  child: AnimatedSmoothIndicator(
                      activeIndex: controller.sliderIndex.value,
                      count: controller.onboardingScreenFourModelObj.value
                          .sliderItemList.value.length,
                      axisDirection: Axis.horizontal,
                      effect: ScrollingDotsEffect(
                          spacing: 8,
                          activeDotColor: theme.colorScheme.primary,
                          dotColor: appTheme.blueGray10001,
                          dotHeight: getVerticalSize(8),
                          dotWidth: getVerticalSize(8))))),
                  Obx(() => (controller.sliderIndex.value ==
                      controller.onboardingScreenFourModelObj.value
                          .sliderItemList.value.length -
                          1)
                      ? CustomElevatedButton(
                      text: "lbl_get_started".tr,
                      margin: getMargin(left: 16, top: 24, right: 16),
                      onTap: () {
                        onTapNext();
                      })
                      : CustomElevatedButton(
                      text: "lbl_next".tr,
                      margin: getMargin(left: 16, top: 24, right: 16),
                      onTap: () {
                        onTapNext();
                      })),
              Obx(() => Opacity(
                    opacity: (controller.sliderIndex.value ==
                            controller.onboardingScreenFourModelObj.value
                                    .sliderItemList.value.length -
                                1)
                        ? 0
                        : 1,
                    child: GestureDetector(
                        onTap: () {
                          if (!(controller.sliderIndex.value ==
                              controller.onboardingScreenFourModelObj.value
                                      .sliderItemList.value.length -
                                  1)) {
                            onTapTxtSkip();
                          }
                        },
                        child: Padding(
                                padding: getPadding(top: 27, bottom: 30),
                                child: Text("lbl_skip".tr,
                                    style: CustomTextStyles
                                        .titleSmallErrorContainer_1))),
                  ))
            ])));
  }

  onTapNext() {
    // TODO: implement Actions
    if (controller.sliderIndex.value ==
        controller.onboardingScreenFourModelObj.value.sliderItemList.value
                .length -
            1) {
      PrefUtils.setIsIntro(false);
      Get.toNamed(
        AppRoutes.loginScreen,
      );
    } else {
      controller.pageController.jumpToPage(controller.sliderIndex.value + 1);
    }
  }

  onTapTxtSkip() {

    PrefUtils.setIsIntro(false);
    Get.offNamed(AppRoutes.loginScreen);
  }
}
