// ignore_for_file: must_be_immutable

import 'package:bustrackingapp/core/app_export.dart';
import 'package:flutter/material.dart';

class CustomRadioButton extends StatelessWidget {
  CustomRadioButton({
    Key? key,
    required this.onChange,
    this.decoration,
    this.alignment,
    this.isRightCheck,
    this.iconSize,
    this.value,
    this.groupValue,
    this.text,
    this.width,
    this.margin,
    this.padding,
    this.textStyle,
    this.textAlignment,
    this.gradient,
    this.icon,
    this.backgroundColor,
  }) : super(
          key: key,
        );

  final BoxDecoration? decoration;

  final Alignment? alignment;

  final bool? isRightCheck;

  final double? iconSize;

  int? value;

  final int? groupValue;

  final Function(int) onChange;

  final String? text;
  final String? icon;

  final double? width;

  final EdgeInsetsGeometry? margin;

  final EdgeInsetsGeometry? padding;

  final TextStyle? textStyle;

  final TextAlign? textAlignment;

  final Gradient? gradient;

  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: buildRadioButtonWidget,
          )
        : buildRadioButtonWidget;
  }

  bool get isGradient => gradient != null;
  BoxDecoration get gradientDecoration => BoxDecoration(gradient: gradient);
  Widget get buildRadioButtonWidget => InkWell(
        onTap: () {
          onChange(value!);
        },
        child: Container(
          decoration: decoration,
          width: width,
          margin: margin ?? EdgeInsets.zero,
          padding: padding,
          child: (isRightCheck ?? false)
              ? rightSideRadioButton
              : leftSideRadioButton,
        ),
      );
  Widget get leftSideRadioButton => Row(
        children: [
          Padding(
            child: radioButtonWidget,
            padding: EdgeInsets.only(right: 8),
          ),
          textWidget,
        ],
      );
  Widget get rightSideRadioButton => Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: getVerticalSize(36),
            width: getVerticalSize(36),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: appTheme.whiteA700
            ),
            padding: getPadding(all: 6),
            child: CustomImageView(
              svgPath: icon,
            ),
          ),
          textWidget,
          Spacer(),
          radioButtonWidget,
        ],
      );
  Widget get textWidget => Padding(
    padding: getPadding(left: 12),
    child: Text(
          text ?? "",
          textAlign: textAlignment ?? TextAlign.center,
          style: textStyle ?? CustomTextStyles.titleMediumSFProDisplay,
        ),
  );
  Widget get radioButtonWidget => SizedBox(
        height: iconSize,
        width: iconSize,
        child: Radio<int>(

          // visualDensity: VisualDensity(
          //   vertical: -4,
          //   horizontal: -4,
          // ),

          value: value!,
          groupValue: groupValue,
          onChanged: (value) {
            onChange(value!);
          },
        ),
      );

  BoxDecoration get radioButtonDecoration =>
      BoxDecoration(color: backgroundColor);

}
