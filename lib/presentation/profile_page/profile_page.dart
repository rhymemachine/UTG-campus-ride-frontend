import 'package:bustrackingapp/presentation/logout_screen/logout_screen.dart';
import 'package:bustrackingapp/widgets/widget_utils.dart';

import '../home_container_screen/controller/home_container_controller.dart';
import 'controller/profile_controller.dart';
import 'models/profile_model.dart';
import 'package:bustrackingapp/core/app_export.dart';
import 'package:bustrackingapp/widgets/app_bar/appbar_title.dart';
import 'package:bustrackingapp/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProfilePage extends StatelessWidget {
  ProfilePage({Key? key})
      : super(
          key: key,
        );

  ProfileController controller = Get.put(ProfileController(ProfileModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return WillPopScope(
      onWillPop: () async {

        HomeContainerController homeContainerController = Get.put(HomeContainerController());

        homeContainerController.selectedIndex.value = 0;

        return false;
      },
      child: Scaffold(
        backgroundColor: appTheme.whiteA700,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: getPadding(
                  top: 19,
                  bottom: 19,
                ),
                decoration: AppDecoration.outlineOnPrimaryContainer,
                child: CustomAppBar(
                  title: AppbarTitle(
                    text: "lbl_profile".tr,
                    margin: getMargin(
                      left: 16,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  padding: getPadding(
                    left: 16,
                    top: 24,
                    right: 16,
                    bottom: 24,
                  ),
                  child: ListView(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    physics: BouncingScrollPhysics(),
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                        svgPath: ImageConstant.imgAvtar1,
                        height: getSize(100),
                        width: getSize(100),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 11,
                        ),
                        child: Text(
                          "System Admin".tr,
                          style: CustomTextStyles.titleMediumMedium,textAlign: TextAlign.center,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 7,
                        ),
                        child: Text(
                          "admin@utg.gm".tr,
                          style: CustomTextStyles.bodyLarge_1,textAlign: TextAlign.center,
                        ),
                      ),

                      Padding(
                        padding: getPadding(top: 24),
                        child: buildCommonRow(title: "lbl_profile".tr,icon: ImageConstant.imgUser,onTap: (){
                          onTapProfile();
                        }),
                      ),

                      buildCommonRow(title: "lbl_my_cards".tr,icon: ImageConstant.imgSave,onTap: (){
                        onTapCards();
                      }),

                      buildCommonRow(title: "lbl_my_address".tr,icon: ImageConstant.imgLocationBlack900,onTap: (){
                        onTapMyAddress();
                      }),

                      buildCommonRow(title: "lbl_privacy_policy".tr,icon: ImageConstant.imgArrowdown,onTap: (){
                        onTapPrivacy();
                      }),

                      buildCommonRow(title: "Help".tr,icon: ImageConstant.imgHelp,onTap: (){
                        onTapCards();
                      }),

                      buildCommonRow(title: "lbl_log_out".tr,icon: ImageConstant.imgIclogout,onTap: (){
                        onTapLogOut(context);
                      }),

                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }


  onTapProfile(){
    Get.toNamed(AppRoutes.profileDetailsScreen);
  }

  onTapCards(){
    Get.toNamed(AppRoutes.myCardsScreen);
  }

  onTapMyAddress(){
    Get.toNamed(AppRoutes.myAddressScreen);
  }

  onTapPrivacy(){
    Get.toNamed(AppRoutes.privacyPolicyScreen);
  }

  onTapLogOut(BuildContext context){
    showCommonDialog(context: context, widget: LogoutScreen());

    Get.toNamed(AppRoutes.loginScreen);
  }



  Widget buildCommonRow({required String title,required String icon,required Function onTap}) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Container(
                      margin: getMargin(
                        top: 16,
                      ),
                      padding: getPadding(
                        all: 16,
                      ),
                      decoration: AppDecoration.fillGray.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder7,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomImageView(
                            svgPath: icon,
                            height: getSize(22),
                            width: getSize(22),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 8,
                              top: 2,
                            ),
                            child: Text(
                              title,
                              style: theme.textTheme.bodyLarge,
                            ),
                          ),
                          Spacer(),
                          CustomImageView(
                            svgPath: ImageConstant.imgArrowrightBlack900,
                            height: getSize(16),
                            width: getSize(16),
                            margin: getMargin(
                              top: 3,
                              bottom: 3,
                            ),
                          ),
                        ],
                      ),
                    ),
    );
  }
}
