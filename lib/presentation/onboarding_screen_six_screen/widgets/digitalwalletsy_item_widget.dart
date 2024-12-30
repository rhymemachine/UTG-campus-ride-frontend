import '../controller/onboarding_screen_six_controller.dart';
import '../models/digitalwalletsy_item_model.dart';
import 'package:bustrackingapp/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DigitalwalletsyItemWidget extends StatelessWidget {
  DigitalwalletsyItemWidget(
    this.digitalwalletsyItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  DigitalwalletsyItemModel digitalwalletsyItemModelObj;

  var controller = Get.find<OnboardingScreenSixController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: getPadding(
            left: 17,
            right: 17,
          ),
          child: Text(
            "msg_digital_wallet_system".tr,
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
            top: 10,
          ),
          child: Text(
            "msg_digital_wallet_system2".tr,
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
