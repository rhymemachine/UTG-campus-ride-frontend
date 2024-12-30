import 'package:bustrackingapp/core/app_export.dart';
import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton({
    Key? key,
    this.alignment,
    this.margin,
    this.height,
    this.width,
    this.padding,
    this.decoration,
    this.child,
    this.onTap,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final EdgeInsetsGeometry? margin;

  final double? height;

  final double? width;

  final EdgeInsetsGeometry? padding;

  final BoxDecoration? decoration;

  final Widget? child;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: iconButtonWidget,
          )
        : iconButtonWidget;
  }

  Widget get iconButtonWidget => Padding(
        padding: margin ?? EdgeInsets.zero,
        child: SizedBox(
          height: height ?? 0,
          width: width ?? 0,
          child: IconButton(
            padding: EdgeInsets.zero,
            icon: Container(
              padding: padding ?? EdgeInsets.zero,
              decoration: decoration ??
                  BoxDecoration(
                    color: appTheme.whiteA700,
                    borderRadius:
                        BorderRadius.circular(getHorizontalSize(17.00)),
                    boxShadow: [
                      BoxShadow(
                        color: appTheme.black900.withOpacity(0.1),
                        spreadRadius: getHorizontalSize(2.00),
                        blurRadius: getHorizontalSize(2.00),
                        offset: Offset(
                          0,
                          4,
                        ),
                      ),
                    ],
                  ),
              child: child,
            ),
            onPressed: onTap,
          ),
        ),
      );
}

/// Extension on [CustomIconButton] to facilitate inclusion of all types of border style etc
extension IconButtonStyleHelper on CustomIconButton {
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray100,
        borderRadius: BorderRadius.circular(getHorizontalSize(20.00)),
      );
  static BoxDecoration get fillErrorContainer => BoxDecoration(
        color: theme.colorScheme.errorContainer,
        borderRadius: BorderRadius.circular(getHorizontalSize(17.00)),
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
        borderRadius: BorderRadius.circular(getHorizontalSize(27.00)),
      );
  static BoxDecoration get fillWhiteA => BoxDecoration(
        color: appTheme.whiteA700,
        borderRadius: BorderRadius.circular(getHorizontalSize(24.00)),
      );
  static BoxDecoration get outlineBlueGray => BoxDecoration(
        color: appTheme.whiteA700,
        borderRadius: BorderRadius.circular(getHorizontalSize(20.00)),
        border: Border.all(
          color: appTheme.blueGray10001,
          width: getHorizontalSize(1.00),
        ),
      );
  static BoxDecoration get outlineBlackTL25 => BoxDecoration(
        color: appTheme.whiteA700,
        borderRadius: BorderRadius.circular(getHorizontalSize(25.00)),
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.1),
            spreadRadius: getHorizontalSize(2.00),
            blurRadius: getHorizontalSize(2.00),
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlackTL17 => BoxDecoration(
        color: appTheme.whiteA700,
        borderRadius: BorderRadius.circular(getHorizontalSize(17.00)),
        boxShadow: [

          BoxShadow(
            color: Color(0x14000000),
            blurRadius: 15,
            offset: Offset(0, 4),
            spreadRadius: 0,
          ),

          // BoxShadow(
          //   color: appTheme.black900.withOpacity(0.08),
          //   spreadRadius: getHorizontalSize(2.00),
          //   blurRadius: getHorizontalSize(2.00),
          //   offset: Offset(
          //     0,
          //     4,
          //   ),
          // ),

        ],
      );
  static BoxDecoration get fillWhiteATL17 => BoxDecoration(
        color: appTheme.whiteA700,
        borderRadius: BorderRadius.circular(getHorizontalSize(17.00)),
      );
}
