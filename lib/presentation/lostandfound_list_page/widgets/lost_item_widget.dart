import '../controller/lostandfound_list_controller.dart';
import '../models/lost_item_model.dart';
import 'package:bustrackingapp/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class LostItemWidget extends StatelessWidget {
  LostItemWidget(
    this.lostItemModelObj, {
    Key? key,
        required this.index,

    this.onTapBustrip,
  }) : super(
          key: key,
        );
  int index;

  LostItemModel lostItemModelObj;

  var controller = Get.find<LostandfoundListController>();

  VoidCallback? onTapBustrip;

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: (index == 0)?1:0.5,
      child: GestureDetector(
        onTap: () {
          onTapBustrip?.call();
        },
        child: Container(
          padding: getPadding(
            top: 17,
            bottom: 17,
          ),
          decoration: AppDecoration.fillGray.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder16,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: getPadding(
                  left: 18,
                  right: 18,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      lostItemModelObj.title ?? "",
                      style: theme.textTheme.titleMedium,
                    ),
                    // Spacer(
                    //   flex: 52,
                    // ),
                    Padding(
                      padding: getPadding(
                        top: 2,
                      ),
                      child: Text(
                         "",
                        style: CustomTextStyles.titleSmall14,
                      ),
                    ),
                    // Spacer(
                    //   flex: 47,
                    // ),
                    Text(
                      lostItemModelObj.description ?? "",
                      style: CustomTextStyles.titleMediumBold,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 16,
                ),
                child: Divider(
                  color: appTheme.blueGray10001,
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 18,
                  top: 14,
                  right: 18,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: getPadding(
                        top: 7,
                        bottom: 3,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Westfield".tr,
                            style: theme.textTheme.titleMedium,
                          ),
                          Padding(
                            padding: getPadding(
                              top: 10,
                            ),
                            child: Text(
                              "lbl_5_50_pm2".tr,
                              style: CustomTextStyles.bodyMediumBlack900_1,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CustomImageView(
                          svgPath: (index != 0)?ImageConstant.rowImage:ImageConstant.imgCamera,
                          height: getVerticalSize(34),
                          width: getHorizontalSize(80),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 5,
                          ),
                          child: Text(
                            lostItemModelObj.status ?? "",
                            style: theme.textTheme.labelLarge,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: getPadding(
                        top: 6,
                        bottom: 3,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Faraba".tr,
                            style: theme.textTheme.titleMedium,
                          ),
                          Padding(
                            padding: getPadding(
                              top: 11,
                            ),
                            child: Text(
                              "lbl_6_40_pm2".tr,
                              style: CustomTextStyles.bodyMediumBlack900_1,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
