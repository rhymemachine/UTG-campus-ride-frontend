import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeErrorContainer => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.errorContainer,
      );

  static get bodyLargeText => theme.textTheme.bodyLarge;

  static get bodyLargeGray500 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray500,
      );
  static get bodyLargePrimary => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodyLargeSFProDisplay => theme.textTheme.bodyLarge!.sFProDisplay;
  static get bodyLargeWhiteA700 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.whiteA700,
        fontSize: getFontSize(
          18,
        ),
      );
  static get bodyLargeWhiteA700_1 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.whiteA700,
      );
  static get bodyLarge_1 => theme.textTheme.bodyLarge!;
  static get bodyMediumBlack900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900,
        fontSize: getFontSize(
          14,
        ),
      );
  static get bodyMediumBlack900_1 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900,
      );
  static get bodyMediumGray500 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray500,
      );
  static get bodyMediumGray50014 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray500,
        fontSize: getFontSize(
          14,
        ),
      );
  static get bodyMediumPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodyMediumRed600 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.red600,
        fontSize: getFontSize(
          14,
        ),
      );
  static get bodyMediumRed600_1 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.red600,
      );
  static get bodyMediumSFProDisplayBlack900 =>
      theme.textTheme.bodyMedium!.sFProDisplay.copyWith(
        color: appTheme.black900,
        fontSize: getFontSize(
          14,
        ),
      );
  // Headline style
  static get headlineMediumSFProDisplay =>
      theme.textTheme.headlineMedium!.sFProDisplay;
  static get headlineMediumWhiteA700 =>
      theme.textTheme.headlineMedium!.copyWith(
        color: appTheme.whiteA700,
      );
  static get headlineMediumWhiteA700_1 =>
      theme.textTheme.headlineMedium!.copyWith(
        color: appTheme.whiteA700,
      );
  static get headlineSmallErrorContainer =>
      theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.errorContainer,
      );
  static get headlineSmallSFProDisplay =>
      theme.textTheme.headlineSmall!.sFProDisplay.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get headlineSmallSFProDisplayGray500 =>
      theme.textTheme.headlineSmall!.sFProDisplay.copyWith(
        color: appTheme.gray500,
        fontWeight: FontWeight.w400,
      );
  // Label text style
  static get labelLargeErrorContainer => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.errorContainer,
      );
  static get labelLargeGray500 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray500,
        fontWeight: FontWeight.w600,
      );
  static get labelLargePrimary => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  // Title text style
  static get titleMedium18 => theme.textTheme.titleMedium!.copyWith(
        fontSize: getFontSize(
          18,
        ),
      );
  static get titleMediumBold => theme.textTheme.titleMedium!.copyWith(
        fontSize: getFontSize(
          18,
        ),
        fontWeight: FontWeight.w700,
      );
  static get titleMediumBold18 => theme.textTheme.titleMedium!.copyWith(
        fontSize: getFontSize(
          18,
        ),
        fontWeight: FontWeight.w700,
      );
  static get titleMediumErrorContainer => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.errorContainer,
      );
  static get titleMediumErrorContainerBold =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.errorContainer,
        fontSize: getFontSize(
          18,
        ),
        fontWeight: FontWeight.w700,
      );
  static get titleMediumGray800 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray800,
        fontSize: getFontSize(
          18,
        ),
        fontWeight: FontWeight.w700,
      );
  static get titleMediumLightgreen900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.lightGreen900,
      );
  static get titleMediumMedium => theme.textTheme.titleMedium!.copyWith(
        fontSize: getFontSize(
          18,
        ),
        fontWeight: FontWeight.w500,
      );
  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleMediumSFProDisplay =>
      theme.textTheme.titleMedium!.sFProDisplay.copyWith(
        fontSize: getFontSize(
          18,
        ),
        fontWeight: FontWeight.w700,
      );
  static get titleMediumWhiteA700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA700,
        fontSize: getFontSize(
          18,
        ),
      );
  static get titleSmall14 => theme.textTheme.titleSmall!.copyWith(
        fontSize: getFontSize(
          14,
        ),
      );
  static get titleSmallErrorContainer => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.errorContainer,
        fontSize: getFontSize(
          14,
        ),
      );
  static get titleSmallErrorContainer_1 => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.errorContainer,
      );
  static get titleSmallPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: getFontSize(
          14,
        ),
        fontWeight: FontWeight.w600,
      );
}

extension on TextStyle {

  TextStyle get sFProDisplay {
    return copyWith(
      fontFamily: 'SF Pro Display',
    );
  }
}
