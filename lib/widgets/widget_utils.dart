import 'package:bustrackingapp/core/app_export.dart';
import 'package:flutter/material.dart';


getNoneAppBar(){
  return AppBar(
  toolbarHeight: 0,
  elevation: 0,
  backgroundColor: appTheme.whiteA700,
  );
}

showCommonDialog({required BuildContext context,required Widget widget}){
  return showDialog(context: context,
    barrierDismissible: false,
    builder: (context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusStyle.roundedBorder16,
        ),
        // contentPadding: EdgeInsets.zero,
        insetPadding: getPadding(left: 20,right: 20),
        content: widget,
      );
    },);
}


customCardTabView({required String icon,required String text}){
  return Container(
    width: double.infinity,
    margin: getMargin(top: 16),
    padding: getPadding(
        all: 20),
    decoration: AppDecoration.fillGray.copyWith(
      borderRadius: BorderRadiusStyle.roundedBorder16,
    ),
    child: Row(
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
        Padding(
          padding: getPadding(left: 12),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: CustomTextStyles.titleMediumSFProDisplay,
          ),
        ),

      ],
    ),
  );
}
