import '../controller/my_address_controller.dart';
import '../models/useraddress_item_model.dart';
import 'package:bustrackingapp/core/app_export.dart';
import 'package:bustrackingapp/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class UseraddressItemWidget extends StatelessWidget {
  UseraddressItemWidget(
    this.useraddressItemModelObj, {
    Key? key,

    this.onTapDefault,
  }) : super(
          key: key,
        );

  UseraddressItemModel useraddressItemModelObj;

  var controller = Get.find<MyAddressController>();

  VoidCallback? onTapDefault;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: getPadding(
        left: 16,
        top: 20,
        right: 12,
        bottom: 20,
      ),
      decoration: AppDecoration.fillGray,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: getSize(34),
            width: getSize(34),
            decoration: AppDecoration.white.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder16,
            ),
            child: CustomIconButton(
              height: getSize(34),
              width: getSize(34),
              padding: getPadding(
                all: 7,
              ),
              decoration: IconButtonStyleHelper.fillWhiteATL17,
              alignment: Alignment.center,
              child: CustomImageView(
                svgPath: ImageConstant.imgEye,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: getPadding(
                left: 20,
                bottom: 2,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    useraddressItemModelObj.title ?? "",
                    style: theme.textTheme.titleSmall,
                  ),
                  Padding(
                    padding: getPadding(
                      top: 8,
                    ),
                    child: Text(
                      useraddressItemModelObj.address ?? "",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.bodyLarge!.copyWith(
                        height: 1.50,
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 11,
                    ),
                    child: Text(
                      "lbl_316_555_0116".tr,
                      style: theme.textTheme.bodyLarge,
                    ),
                  ),
                ],
              ),
            ),
          ),

          Row(
            children: [

              Opacity(
                opacity: (useraddressItemModelObj.isDefault ?? false)?1:0,
                child: Text(
                  "lbl_default".tr,
                  style: CustomTextStyles.titleSmallPrimary,
                ),
              ),

              GestureDetector(
                onTap: () {
                  onTapDefault?.call();
                },
                child: Container(
                  height: getVerticalSize(24),
                  margin: getMargin(left: 9),
                  // width: getHorizontalSize(50),
                  child: CustomImageView(
                    svgPath: ImageConstant.imgOverflowmenu,
                  ),
                ),
              ),
            ],
          )



          // CustomElevatedButton(
          //   height: getVerticalSize(24),
          //   width: getHorizontalSize(80),
          //   text: "lbl_default".tr,
          //   overlayColor: Colors.transparent,
          //   margin: getMargin(
          //     bottom: 78,
          //   ),
          //   rightIcon: Container(
          //     margin: getMargin(
          //       left: 9,
          //     ),
          //     child: ,
          //   ),
          //   buttonStyle: CustomButtonStyles.none,
          //   buttonTextStyle: CustomTextStyles.titleSmallPrimary,
          //   onTap: () {
          //     onTapDefault?.call();
          //   },
          // ),
        ],
      ),
    );
  }
}
