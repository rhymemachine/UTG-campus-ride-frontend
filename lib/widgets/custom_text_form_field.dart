import 'package:bustrackingapp/core/app_export.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField({
    Key? key,
    this.alignment,
    this.width,
    this.margin,
    this.controller,
    this.focusNode,
    this.autofocus = true,
    this.textStyle,
    this.obscureText = false,
    this.textInputAction = TextInputAction.next,
    this.textInputType = TextInputType.text,
    this.maxLines,
    this.hintText,
    this.hintStyle,
    this.prefix,
    this.prefixConstraints,
    this.suffix,
    this.suffixConstraints,
    this.contentPadding,
    this.borderDecoration,
    this.fillColor,
    this.filled = true,
    this.validator,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final double? width;

  final EdgeInsetsGeometry? margin;

  final TextEditingController? controller;

  final FocusNode? focusNode;

  final bool? autofocus;

  final TextStyle? textStyle;

  final bool? obscureText;

  final TextInputAction? textInputAction;

  final TextInputType? textInputType;

  final int? maxLines;

  final String? hintText;

  final TextStyle? hintStyle;

  final Widget? prefix;

  final BoxConstraints? prefixConstraints;

  final Widget? suffix;

  final BoxConstraints? suffixConstraints;

  final EdgeInsets? contentPadding;

  final InputBorder? borderDecoration;

  final Color? fillColor;

  final bool? filled;

  final FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: textFormFieldWidget,
          )
        : textFormFieldWidget;
  }

  Widget get textFormFieldWidget => Container(
        width: width ?? double.maxFinite,
        margin: margin,
        child: TextFormField(
          controller: controller,
          // focusNode: focusNode ?? FocusNode(),
          // autofocus: autofocus!,
          style: textStyle ?? CustomTextStyles.bodyLargeText,
          // style: textStyle ?? CustomTextStyles.bodyLargeErrorContainer,
          obscureText: obscureText!,
          textInputAction: textInputAction,
          keyboardType: textInputType,
          maxLines: maxLines ?? 1,
          decoration: decoration,
          validator: validator,
        ),
      );
  InputDecoration get decoration => InputDecoration(
        hintText: hintText ?? "",
        hintStyle: hintStyle ?? theme.textTheme.bodyLarge,
        prefixIcon: prefix ?? Container(
          width: getSize(18),
        ),
        prefixIconConstraints: prefixConstraints ?? BoxConstraints(
          maxWidth: getSize(18),
        ),
        suffixIcon: suffix,
        suffixIconConstraints: suffixConstraints,
        isDense: true,
        errorStyle: CustomTextStyles.bodyMediumRed600,
        contentPadding: contentPadding ??
            getPadding(top: 18,bottom: 18,right: 18,
              // all: 18,
            ),
        fillColor: fillColor ?? appTheme.gray100,
        filled: filled,
        border: borderDecoration ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(getHorizontalSize(14.00)),
              borderSide: BorderSide.none,
            ),
        enabledBorder: borderDecoration ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(getHorizontalSize(14.00)),
              borderSide: BorderSide.none,
            ),
        focusedBorder: borderDecoration ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(getHorizontalSize(14.00)),
              borderSide: BorderSide.none,
            ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(getHorizontalSize(14.00)),
          borderSide: BorderSide(
            color: appTheme.red600,
            width: 1,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(getHorizontalSize(14.00)),
          borderSide: BorderSide(
            color: appTheme.red600,
            width: 1,
          ),
        ),
      );
}
