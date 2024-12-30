// ignore_for_file: must_be_immutable

import 'package:bustrackingapp/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class CustomPinCodeTextField extends StatelessWidget {
  CustomPinCodeTextField({
    Key? key,
    required this.context,
    required this.onChanged,
    this.alignment,
    this.margin,
    this.controller,
    this.textStyle,
    this.hintStyle,
    this.validator,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final EdgeInsetsGeometry? margin;

  final BuildContext context;

  final TextEditingController? controller;

  final TextStyle? textStyle;

  final TextStyle? hintStyle;

  Function(String) onChanged;

  final FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: pinCodeTextFieldWidget,
          )
        : pinCodeTextFieldWidget;
  }

  Widget get pinCodeTextFieldWidget => Padding(
        padding: margin ?? EdgeInsets.zero,
        child: PinCodeTextField(
          appContext: context,
          controller: controller,
          length: 6,
          keyboardType: TextInputType.number,
          textStyle:
              textStyle ?? CustomTextStyles.headlineSmallSFProDisplayGray500,
          hintStyle:
              hintStyle ?? CustomTextStyles.headlineSmallSFProDisplayGray500,
          inputFormatters: [
            FilteringTextInputFormatter.digitsOnly,
          ],
          enableActiveFill: true,
          pinTheme: PinTheme(
            fieldHeight: getHorizontalSize(50.00),
            fieldWidth: getHorizontalSize(50.00),
            shape: PinCodeFieldShape.box,
            borderRadius: BorderRadius.circular(getHorizontalSize(14.00)),
            inactiveFillColor: appTheme.gray100,
            activeFillColor: appTheme.gray100,
            selectedFillColor: appTheme.gray100,
            errorBorderColor: appTheme.red600,
            inactiveColor: Colors.transparent,
            activeColor: Colors.transparent,
            selectedColor: Colors.transparent,
          ),
          onChanged: (value) => onChanged(value),
          validator: validator,
        ),
      );
}
