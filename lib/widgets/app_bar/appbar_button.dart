import 'package:bustrackingapp/core/app_export.dart';
import 'package:bustrackingapp/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AppbarButton extends StatelessWidget {
  AppbarButton({
    Key? key,
    this.margin,
    this.onTap,
  }) : super(
          key: key,
        );

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap?.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomElevatedButton(
          height: getVerticalSize(27),
          width: getHorizontalSize(115),
          text: "lbl_bus_01".tr,
          leftIcon: Container(
            margin: getMargin(
              right: 16,
            ),
            child: CustomImageView(
              svgPath: ImageConstant.imgArrowleft,
            ),
          ),
          buttonStyle: CustomButtonStyles.none,
          buttonTextStyle: theme.textTheme.headlineSmall!,
        ),
      ),
    );
  }
}
