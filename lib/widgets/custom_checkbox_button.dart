import 'package:bustrackingapp/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomCheckboxButton extends StatelessWidget {
  CustomCheckboxButton({
    Key? key,
    required this.onChange,
    this.decoration,
    this.alignment,
    this.isRightCheck,
    this.iconSize,
    this.value,
    this.text,
    this.width,
    this.margin,
    this.padding,
    this.textStyle,
    this.textAlignment,
    this.isExpandedText = false,
  }) : super(
          key: key,
        );

  final BoxDecoration? decoration;

  final Alignment? alignment;

  final bool? isRightCheck;

  final double? iconSize;

  bool? value;

  final Function(bool) onChange;

  final String? text;

  final double? width;

  final EdgeInsetsGeometry? margin;

  final EdgeInsetsGeometry? padding;

  final TextStyle? textStyle;

  final TextAlign? textAlignment;

  final bool isExpandedText;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: buildCheckBoxWidget,
          )
        : buildCheckBoxWidget;
  }

  Widget get buildCheckBoxWidget => InkWell(
        onTap: () {
          value = !(value!);
          onChange(value!);
        },
        child: Container(
          decoration: decoration,
          width: width,
          margin: margin ?? EdgeInsets.zero,
          child: (isRightCheck ?? false) ? rightSideCheckbox : leftSideCheckbox,
        ),
      );
  Widget get leftSideCheckbox => Row(
    crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            child: checkboxWidget,
            padding: EdgeInsets.only(right: 8),
          ),
          isExpandedText ? Expanded(child: textWidget) : textWidget,
        ],
      );
  Widget get rightSideCheckbox => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          isExpandedText ? Expanded(child: textWidget) : textWidget,
          Padding(
            padding: EdgeInsets.only(left: 8),
            child: checkboxWidget,
          ),
        ],
      );
  Widget get textWidget => Text(
        text ?? "",
        textAlign: textAlignment ?? TextAlign.start,
        style: textStyle ?? CustomTextStyles.bodyMediumBlack900,
      );
  Widget get checkboxWidget => SizedBox(
        height: iconSize ?? getHorizontalSize(20.00),
        width: iconSize ?? getHorizontalSize(20.00),
        child: Checkbox(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(getHorizontalSize(5)))),
          // visualDensity: VisualDensity(
          //   vertical: -4,
          //   horizontal: -4,
          // ),
          value: value ?? false,
          checkColor: appTheme.whiteA700,
          onChanged: (value) {
            onChange(value!);
          },
        ),
      );
}
