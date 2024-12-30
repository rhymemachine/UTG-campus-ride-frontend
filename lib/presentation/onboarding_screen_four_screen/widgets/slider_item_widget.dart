import '../controller/onboarding_screen_four_controller.dart';
import '../models/slider_item_model.dart';
import 'package:bustrackingapp/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SliderItemWidget extends StatelessWidget {
  SliderItemWidget(
    this.sliderItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SliderItemModel sliderItemModelObj;

  var controller = Get.find<OnboardingScreenFourController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          sliderItemModelObj.title ?? "",
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          style: theme.textTheme.headlineMedium!.copyWith(
            height: 1.50,
          ),
        ),
        Padding(
          padding: getPadding(
            top: 10,
          ),
          child: Text(
            sliderItemModelObj.desc ?? "",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: CustomTextStyles.bodyLargeErrorContainer.copyWith(
              height: 1.50,
            ),
          ),
        ),
      ],
    );
  }
}
