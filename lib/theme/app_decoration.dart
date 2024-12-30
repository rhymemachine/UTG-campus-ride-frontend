import 'package:flutter/material.dart';
import 'package:bustrackingapp/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillBlueGray => BoxDecoration(
        color: appTheme.blueGray800,
      );
  static BoxDecoration get fillCyan => BoxDecoration(
        color: appTheme.cyan5001,
      );
  static BoxDecoration get fillCyan50 => BoxDecoration(
        color: appTheme.cyan50,
      );
  static BoxDecoration get fillDeepOrange => BoxDecoration(
        color: appTheme.deepOrange100,
      );
  static BoxDecoration get fillDeepPurple => BoxDecoration(
        color: appTheme.deepPurple200,
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray100,
      );
  static BoxDecoration get fillGray50 => BoxDecoration(
        color: appTheme.gray50,
      );
  static BoxDecoration get fillRedA => BoxDecoration(
        color: appTheme.redA100,
      );

  // Outline decorations
  static BoxDecoration get outlineBlack => BoxDecoration(
        color: appTheme.whiteA700,
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.04),
            spreadRadius: getHorizontalSize(2),
            blurRadius: getHorizontalSize(2),
            offset: Offset(
              0,
              -4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineOnPrimaryContainer => BoxDecoration(
        color: appTheme.whiteA700,
        border: Border(
          bottom: BorderSide(
            color: theme.colorScheme.onPrimaryContainer,
            width: getHorizontalSize(1),
          ),
        ),
      );
  static BoxDecoration get outlineOnPrimaryContainer1 => BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: theme.colorScheme.onPrimaryContainer,
            width: getHorizontalSize(1),
          ),
        ),
      );
  static BoxDecoration get outlinePrimary => BoxDecoration(
        color: appTheme.gray100,
        border: Border.all(
          color: theme.colorScheme.primary,
          width: getHorizontalSize(1),
        ),
      );
  static BoxDecoration get outlinePrimaryContainer => BoxDecoration(
        color: theme.colorScheme.primaryContainer,
        border: Border.all(
          color: theme.colorScheme.primaryContainer.withOpacity(0.34),
          width: getHorizontalSize(1),
          strokeAlign: strokeAlignCenter,
        ),
      );
  static BoxDecoration get outlineWhiteA => BoxDecoration(
        color: appTheme.greenA100,
        border: Border.all(
          color: appTheme.whiteA700,
          width: getHorizontalSize(4),
        ),
      );
  static BoxDecoration get outlineWhiteA700 => BoxDecoration(
        color: appTheme.deepPurple200,
        border: Border.all(
          color: appTheme.whiteA700,
          width: getHorizontalSize(4),
        ),
      );

  // White decorations
  static BoxDecoration get white => BoxDecoration(
        color: appTheme.whiteA700,
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder50 => BorderRadius.circular(
        getHorizontalSize(50),
      );
  static BorderRadius get circleBorder60 => BorderRadius.circular(
        getHorizontalSize(60),
      );

  // Custom borders
  static BorderRadius get customBorderTL24 => BorderRadius.vertical(
        top: Radius.circular(getHorizontalSize(24)),
      );
  static BorderRadius get customBorderTL32 => BorderRadius.vertical(
        top: Radius.circular(getHorizontalSize(32)),
      );

  // Rounded borders
  static BorderRadius get roundedBorder12 => BorderRadius.circular(
        getHorizontalSize(12),
      );
  static BorderRadius get roundedBorder16 => BorderRadius.circular(
        getHorizontalSize(16),
      );
  static BorderRadius get roundedBorder20 => BorderRadius.circular(
        getHorizontalSize(20),
      );
  static BorderRadius get roundedBorder24 => BorderRadius.circular(
        getHorizontalSize(24),
      );
  static BorderRadius get roundedBorder32 => BorderRadius.circular(
        getHorizontalSize(32),
      );
  static BorderRadius get roundedBorder41 => BorderRadius.circular(
        getHorizontalSize(41),
      );
  static BorderRadius get roundedBorder7 => BorderRadius.circular(
        getHorizontalSize(7),
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.
    
// For Flutter SDK Version 3.7.2 or greater.
    
double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
    