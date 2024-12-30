// ignore_for_file: must_be_immutable

import 'package:bustrackingapp/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

import '../presentation/home_container_screen/controller/home_container_controller.dart';

class CustomBottomBar extends StatelessWidget {
  CustomBottomBar({
    Key? key,
    this.onChanged,
  }) : super(
          key: key,
        );

  HomeContainerController controller = Get.find<HomeContainerController>();

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgNavhome,
      activeIcon: ImageConstant.imgNavhome,
      title: "lbl_home".tr,
      type: BottomBarEnum.Home,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavticket,
      activeIcon: ImageConstant.imgNavticketPrimary,
      title: "Lost & Found".tr,
      type: BottomBarEnum.LostandFound,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavwallet,
      activeIcon: ImageConstant.imgNavwalletPrimary,
      title: "lbl_wallet".tr,
      type: BottomBarEnum.Wallet,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavprofile,
      activeIcon: ImageConstant.imgNavprofilePrimary,
      title: "lbl_profile".tr,
      type: BottomBarEnum.Profile,
    )

  ];

  Function(int)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getVerticalSize(91),
      // decoration: BoxDecoration(
      //   image: DecorationImage(
      //     image: fs.Svg(
      //       ImageConstant.imgGroup107,
      //     ),
      //     fit: BoxFit.cover,
      //   ),
      // ),
      child: Obx(
        () => Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Color(0x14000000),
                blurRadius: 15,
                offset: Offset(0, 4),
                spreadRadius: 0,
              )

            ]
          ),
          child: BottomNavigationBar(
            backgroundColor: appTheme.whiteA700,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            selectedFontSize: 0,
            // elevation: 10,
            currentIndex: controller.selectedIndex.value,
            type: BottomNavigationBarType.fixed,
            items: List.generate(bottomMenuList.length, (index) {
              return BottomNavigationBarItem(
                icon: Column(
                  // mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomImageView(
                      svgPath: bottomMenuList[index].icon,
                      height: getSize(24),
                      width: getSize(24),
                      color: appTheme.gray500,
                    ),
                    Padding(
                      padding: getPadding(
                        top: 4,
                      ),
                      child: Text(
                        bottomMenuList[index].title ?? "",
                        style: CustomTextStyles.bodyMediumGray500.copyWith(
                          color: appTheme.gray500,
                        ),
                      ),
                    ),
                  ],
                ),
                activeIcon: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomImageView(
                      svgPath: bottomMenuList[index].activeIcon,
                      height: getSize(24),
                      width: getSize(24),
                      color: theme.colorScheme.primary,
                    ),
                    Padding(
                      padding: getPadding(
                        top: 5,
                      ),
                      child: Text(
                        bottomMenuList[index].title ?? "",
                        style: CustomTextStyles.labelLargePrimary.copyWith(
                          color: theme.colorScheme.primary,
                        ),
                      ),
                    ),
                  ],
                ),
                label: '',
              );
            }),
            onTap: (index) {
              // selectedIndex.value = index;
              // onChanged?.call(bottomMenuList[index].type);
              onChanged?.call(index);
            },
          ),
        ),
      ),
    );
  }
}

enum BottomBarEnum {
  Home,
  Wallet,
  Profile,
  LostandFound,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    this.title,
    required this.type,
  });

  String icon;

  String activeIcon;

  String? title;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
