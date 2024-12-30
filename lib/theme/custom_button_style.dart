import 'package:bustrackingapp/core/app_export.dart';
import 'package:flutter/material.dart';

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // Filled button style
  static ButtonStyle get fillGray => ElevatedButton.styleFrom(
        backgroundColor: appTheme.gray100,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(getHorizontalSize(14.00)),
        ),
      );
  static ButtonStyle get fillWhiteA => ElevatedButton.styleFrom(
        backgroundColor: appTheme.whiteA700,
      );

  static ButtonStyle get fillPrimary => ElevatedButton.styleFrom(
    backgroundColor: theme.colorScheme.primary,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(
        14,
      ),
    ),
  );


  // Outline button style
  static ButtonStyle get outlineBlack => ElevatedButton.styleFrom(
        backgroundColor: appTheme.whiteA700,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(getHorizontalSize(14.00)),
        ),
        shadowColor: appTheme.black900.withOpacity(0.08),
        elevation: 3,
      );
  // text button style
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
      );
}
