import '../controller/onboarding_screen_five_controller.dart';
import '../models/busservices_item_model.dart';
import 'package:bustrackingapp/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BusservicesItemWidget extends StatelessWidget {
  BusservicesItemWidget(
    this.busservicesItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  BusservicesItemModel busservicesItemModelObj;

  var controller = Get.find<OnboardingScreenFiveController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: getPadding(
            left: 18,
            right: 18,
          ),
          child: Text(
            "msg_effortless_reliable".tr,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: theme.textTheme.headlineMedium!.copyWith(
              height: 1.50,
            ),
          ),
        ),
        Padding(
          padding: getPadding(
            top: 15,
          ),
          child: Text(
            "msg_our_services_are".tr,
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
