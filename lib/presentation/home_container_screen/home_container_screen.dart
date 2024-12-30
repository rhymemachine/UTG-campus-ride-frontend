import 'controller/home_container_controller.dart';
import 'package:bustrackingapp/core/app_export.dart';
import 'package:bustrackingapp/presentation/home_page/home_page.dart';
import 'package:bustrackingapp/presentation/profile_page/profile_page.dart';
import 'package:bustrackingapp/presentation/ticket_list_page/ticket_list_page.dart';
import 'package:bustrackingapp/presentation/wallet_page/wallet_page.dart';
import 'package:bustrackingapp/widgets/custom_bottom_bar.dart';
import 'package:bustrackingapp/presentation/lostandfound_list_page/lostandfound_list_page.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomeContainerScreen extends GetWidget<HomeContainerController> {
  HomeContainerScreen({Key? key}) : super(key: key);

  List<Widget> bottomList = [
   HomePage(),
   LostandfoundListPage(),
   WalletPage(),
   ProfilePage(),
  ];


  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
        body: Obx(() => bottomList[controller.selectedIndex.value]),

        // body: Navigator(
        //     key: Get.nestedKey(1),
        //     initialRoute: AppRoutes.homePage,
        //     onGenerateRoute: (routeSetting) => GetPageRoute(
        //         page: () => getCurrentPage(routeSetting.name!),
        //         transition: Transition.noTransition)),

        bottomNavigationBar:
        CustomBottomBar(
            onChanged: (int type) {
             controller.selectedIndex.value = type;
             // Get.toNamed(getCurrentRoute(type), id: 1);
            }
        )
        // bottomNavigationBar:
        //     CustomBottomBar(onChanged: (BottomBarEnum type) {
        //   Get.toNamed(getCurrentRoute(type), id: 1);
        // })
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homePage;
      case BottomBarEnum.LostandFound:
        return AppRoutes.lostandfoundListPage;
      case BottomBarEnum.Wallet:
        return AppRoutes.walletPage;
      case BottomBarEnum.Profile:
        return AppRoutes.profilePage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homePage:
        return HomePage();
      case AppRoutes.lostandfoundListPage:
        return LostandfoundListPage();
      case AppRoutes.walletPage:
        return WalletPage();
      case AppRoutes.profilePage:
        return ProfilePage();
      default:
        return DefaultWidget();
    }
  }
}
