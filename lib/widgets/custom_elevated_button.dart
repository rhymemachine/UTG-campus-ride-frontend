import 'package:bustrackingapp/core/app_export.dart';
import 'package:bustrackingapp/widgets/base_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomElevatedButton extends BaseButton {
  CustomElevatedButton({
    Key? key,
    this.decoration,
    this.leftIcon,
    this.rightIcon,
    EdgeInsets? margin,
    VoidCallback? onTap,
    ButtonStyle? buttonStyle,
    Alignment? alignment,
    TextStyle? buttonTextStyle,
    bool? isDisabled,
    double? height,
    double? width,
    this.overlayColor,
    required String text,
  }) : super(
          text: text,
          onTap: onTap,
          buttonStyle: buttonStyle,
          isDisabled: isDisabled,
          buttonTextStyle: buttonTextStyle,
          height: height,
          width: width,
          alignment: alignment,
          margin: margin,
        );

  final BoxDecoration? decoration;

  final Widget? leftIcon;

  final Widget? rightIcon;
  Color? overlayColor;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: buildElevatedButtonWidget,
          )
        : buildElevatedButtonWidget;
  }

  Widget get buildElevatedButtonWidget => Container(
        height: this.height ?? getVerticalSize(56),
        width: this.width,
        margin: margin,
        decoration: decoration,
        child: ElevatedButton(
          style: (buttonStyle != null)?buttonStyle!.copyWith(
            elevation: MaterialStatePropertyAll(0),
            overlayColor: (overlayColor != null)?MaterialStatePropertyAll(overlayColor):null
          ):ButtonStyle(elevation: MaterialStatePropertyAll(0)),
          onPressed: isDisabled ?? false ? null : onTap ?? () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              leftIcon ?? const SizedBox.shrink(),
              Text(
                text,
                style: buttonTextStyle ?? CustomTextStyles.titleMediumWhiteA700,
              ),
              rightIcon ?? const SizedBox.shrink(),
            ],
          ),
        ),
      );
}
