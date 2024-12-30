import 'package:bustrackingapp/core/app_export.dart';
import 'package:flutter/material.dart';

class CustomSearchView extends StatelessWidget {
  CustomSearchView({
    Key? key,
    this.alignment,
    this.width,
    this.margin,
    this.controller,
    this.focusNode,
    this.autofocus = true,
    this.textStyle,
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
    this.onTap,
    this.enabled
  }) : super(
          key: key,
        );


  final GestureTapCallback? onTap;

  final Alignment? alignment;

  final double? width;

  final EdgeInsetsGeometry? margin;

  final TextEditingController? controller;

  final FocusNode? focusNode;

  final bool? autofocus;

  final TextStyle? textStyle;

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
  final bool? enabled;

  final FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: searchViewWidget,
          )
        : searchViewWidget;
  }

  Widget get searchViewWidget => GestureDetector(
    onTap: onTap,
    child: Container(
          width: width ?? double.maxFinite,
          margin: margin,
          decoration: BoxDecoration(

            borderRadius: BorderRadius.circular(getHorizontalSize(14.00)),

            boxShadow: [
              BoxShadow(
                color: Color(0x21000000),
                blurRadius: 21,
                offset: Offset(0, 2),
                spreadRadius: 0,
              )
            ],
          ),
          child: TextFormField(
            controller: controller,
            focusNode: focusNode ?? FocusNode(),
            autofocus: autofocus!,
            style: textStyle ?? CustomTextStyles.bodyLargeErrorContainer,
            keyboardType: textInputType,
            maxLines: maxLines ?? 1,
            decoration: decoration,
            validator: validator,
            onTap: onTap,
            enabled: enabled,
          ),
        ),
  );
  InputDecoration get decoration => InputDecoration(
        hintText: hintText ?? "",
        hintStyle: hintStyle ?? CustomTextStyles.bodyLargeErrorContainer,
        prefixIcon: prefix,
        prefixIconConstraints: prefixConstraints,
        suffixIcon: suffix ,
            // ??
            // Padding(
            //   padding: EdgeInsets.only(
            //     right: getHorizontalSize(15.00),
            //   ),
            //   child: IconButton(
            //     onPressed: () => controller!.clear(),
            //     icon: Icon(
            //       Icons.clear,
            //       color: Colors.grey.shade600,
            //     ),
            //   ),
            // ),
        suffixIconConstraints: suffixConstraints,
        isDense: true,
        contentPadding: contentPadding ??
            getPadding(
              top: 18,
              right: 18,
              bottom: 18,
            ),
        fillColor: fillColor ?? appTheme.whiteA700,
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
      );
}
