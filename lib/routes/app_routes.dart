import 'dart:io';

import 'package:bustrackingapp/presentation/splash_screen_one_screen/splash_screen_one_screen.dart';
import 'package:bustrackingapp/presentation/splash_screen_one_screen/binding/splash_screen_one_binding.dart';
import 'package:bustrackingapp/presentation/onboarding_screen_four_screen/onboarding_screen_four_screen.dart';
import 'package:bustrackingapp/presentation/onboarding_screen_four_screen/binding/onboarding_screen_four_binding.dart';
import 'package:bustrackingapp/presentation/onboarding_screen_five_screen/onboarding_screen_five_screen.dart';
import 'package:bustrackingapp/presentation/onboarding_screen_five_screen/binding/onboarding_screen_five_binding.dart';
import 'package:bustrackingapp/presentation/onboarding_screen_six_screen/onboarding_screen_six_screen.dart';
import 'package:bustrackingapp/presentation/onboarding_screen_six_screen/binding/onboarding_screen_six_binding.dart';
import 'package:bustrackingapp/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:bustrackingapp/presentation/sign_up_screen/binding/sign_up_binding.dart';
import 'package:bustrackingapp/presentation/login_screen/login_screen.dart';
import 'package:bustrackingapp/presentation/login_screen/binding/login_binding.dart';
import 'package:bustrackingapp/presentation/login_error_screen/login_error_screen.dart';
import 'package:bustrackingapp/presentation/login_error_screen/binding/login_error_binding.dart';
import 'package:bustrackingapp/presentation/login_forgot_password_screen/login_forgot_password_screen.dart';
import 'package:bustrackingapp/presentation/login_forgot_password_screen/binding/login_forgot_password_binding.dart';
import 'package:bustrackingapp/presentation/verification_screen/verification_screen.dart';
import 'package:bustrackingapp/presentation/verification_screen/binding/verification_binding.dart';
import 'package:bustrackingapp/presentation/verification_error_screen/verification_error_screen.dart';
import 'package:bustrackingapp/presentation/verification_error_screen/binding/verification_error_binding.dart';
import 'package:bustrackingapp/presentation/reset_password_screen/reset_password_screen.dart';
import 'package:bustrackingapp/presentation/reset_password_screen/binding/reset_password_binding.dart';
import 'package:bustrackingapp/presentation/password_change_screen/password_change_screen.dart';
import 'package:bustrackingapp/presentation/password_change_screen/binding/password_change_binding.dart';
import 'package:bustrackingapp/presentation/home_container_screen/home_container_screen.dart';
import 'package:bustrackingapp/presentation/home_container_screen/binding/home_container_binding.dart';
import 'package:bustrackingapp/presentation/home_search_screen/home_search_screen.dart';
import 'package:bustrackingapp/presentation/home_search_screen/binding/home_search_binding.dart';
import 'package:bustrackingapp/presentation/home_search_filled_screen/home_search_filled_screen.dart';
import 'package:bustrackingapp/presentation/home_search_filled_screen/binding/home_search_filled_binding.dart';
import 'package:bustrackingapp/presentation/recommended_routes_screen/recommended_routes_screen.dart';
import 'package:bustrackingapp/presentation/recommended_routes_screen/binding/recommended_routes_binding.dart';
import 'package:bustrackingapp/presentation/bus_routes_screen/bus_routes_screen.dart';
import 'package:bustrackingapp/presentation/bus_routes_screen/binding/bus_routes_binding.dart';
import 'package:bustrackingapp/presentation/map_screen/map_screen.dart';
import 'package:bustrackingapp/presentation/map_screen/binding/map_binding.dart';
import 'package:bustrackingapp/presentation/share_ride_screen/share_ride_screen.dart';
import 'package:bustrackingapp/presentation/share_ride_screen/binding/share_ride_binding.dart';
import 'package:bustrackingapp/presentation/ticket_screen/ticket_screen.dart';
import 'package:bustrackingapp/presentation/ticket_screen/binding/ticket_binding.dart';
import 'package:bustrackingapp/presentation/recharge_balance_screen/recharge_balance_screen.dart';
import 'package:bustrackingapp/presentation/recharge_balance_screen/binding/recharge_balance_binding.dart';
import 'package:bustrackingapp/presentation/select_payment_method_one_screen/select_payment_method_one_screen.dart';
import 'package:bustrackingapp/presentation/select_payment_method_one_screen/binding/select_payment_method_one_binding.dart';
import 'package:bustrackingapp/presentation/recharge_balance_pop_up_screen/recharge_balance_pop_up_screen.dart';
import 'package:bustrackingapp/presentation/recharge_balance_pop_up_screen/binding/recharge_balance_pop_up_binding.dart';
import 'package:bustrackingapp/presentation/buy_package_screen/buy_package_screen.dart';
import 'package:bustrackingapp/presentation/buy_package_screen/binding/buy_package_binding.dart';
import 'package:bustrackingapp/presentation/select_payment_method_screen/select_payment_method_screen.dart';
import 'package:bustrackingapp/presentation/select_payment_method_screen/binding/select_payment_method_binding.dart';
import 'package:bustrackingapp/presentation/package_booking_pop_up_screen/package_booking_pop_up_screen.dart';
import 'package:bustrackingapp/presentation/package_booking_pop_up_screen/binding/package_booking_pop_up_binding.dart';
import 'package:bustrackingapp/presentation/refund_package_tab_container_screen/refund_package_tab_container_screen.dart';
import 'package:bustrackingapp/presentation/refund_package_tab_container_screen/binding/refund_package_tab_container_binding.dart';
import 'package:bustrackingapp/presentation/refund_request_successfully_screen/refund_request_successfully_screen.dart';
import 'package:bustrackingapp/presentation/refund_request_successfully_screen/binding/refund_request_successfully_binding.dart';
import 'package:bustrackingapp/presentation/profile_details_screen/profile_details_screen.dart';
import 'package:bustrackingapp/presentation/profile_details_screen/binding/profile_details_binding.dart';
import 'package:bustrackingapp/presentation/edit_profile_screen/edit_profile_screen.dart';
import 'package:bustrackingapp/presentation/edit_profile_screen/binding/edit_profile_binding.dart';
import 'package:bustrackingapp/presentation/add_a_card_defualt_screen/add_a_card_defualt_screen.dart';
import 'package:bustrackingapp/presentation/add_a_card_defualt_screen/binding/add_a_card_defualt_binding.dart';
import 'package:bustrackingapp/presentation/add_a_card_active_screen/add_a_card_active_screen.dart';
import 'package:bustrackingapp/presentation/add_a_card_active_screen/binding/add_a_card_active_binding.dart';
import 'package:bustrackingapp/presentation/my_cards_screen/my_cards_screen.dart';
import 'package:bustrackingapp/presentation/my_cards_screen/binding/my_cards_binding.dart';
import 'package:bustrackingapp/presentation/add_new_address_screen/add_new_address_screen.dart';
import 'package:bustrackingapp/presentation/add_new_address_screen/binding/add_new_address_binding.dart';
import 'package:bustrackingapp/presentation/my_address_screen/my_address_screen.dart';
import 'package:bustrackingapp/presentation/my_address_screen/binding/my_address_binding.dart';
import 'package:bustrackingapp/presentation/my_address_edit_delete_screen/my_address_edit_delete_screen.dart';
import 'package:bustrackingapp/presentation/my_address_edit_delete_screen/binding/my_address_edit_delete_binding.dart';
import 'package:bustrackingapp/presentation/edit_address_screen/edit_address_screen.dart';
import 'package:bustrackingapp/presentation/edit_address_screen/binding/edit_address_binding.dart';
import 'package:bustrackingapp/presentation/my_address_delete_screen/my_address_delete_screen.dart';
import 'package:bustrackingapp/presentation/my_address_delete_screen/binding/my_address_delete_binding.dart';
import 'package:bustrackingapp/presentation/privacy_policy_screen/privacy_policy_screen.dart';
import 'package:bustrackingapp/presentation/privacy_policy_screen/binding/privacy_policy_binding.dart';
import 'package:bustrackingapp/presentation/logout_screen/logout_screen.dart';
import 'package:bustrackingapp/presentation/logout_screen/binding/logout_binding.dart';
import 'package:bustrackingapp/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:bustrackingapp/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:bustrackingapp/presentation/lostandfound_screen/lostandfound_screen.dart';
import 'package:bustrackingapp/presentation/lostandfound_screen/binding/lostandfound_binding.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:page_transition/page_transition.dart';



class AppRoutes {
  static const String splashScreenOneScreen = '/splash_screen_one_screen';

  static const String onboardingScreenFourScreen =
      '/onboarding_screen_four_screen';

  static const String onboardingScreenFiveScreen =
      '/onboarding_screen_five_screen';

  static const String onboardingScreenSixScreen =
      '/onboarding_screen_six_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String loginScreen = '/login_screen';

  static const String loginErrorScreen = '/login_error_screen';

  static const String loginForgotPasswordScreen =
      '/login_forgot_password_screen';

  static const String verificationScreen = '/verification_screen';

  static const String verificationErrorScreen = '/verification_error_screen';

  static const String resetPasswordScreen = '/reset_password_screen';

  static const String passwordChangeScreen = '/password_change_screen';

  static const String homePage = '/home_page';

  static const String homeContainerScreen = '/home_container_screen';

  static const String homeSearchScreen = '/home_search_screen';

  static const String homeSearchFilledScreen = '/home_search_filled_screen';

  static const String recommendedRoutesScreen = '/recommended_routes_screen';

  static const String busRoutesScreen = '/bus_routes_screen';

  static const String mapScreen = '/map_screen';

  static const String shareRideScreen = '/share_ride_screen';

  static const String ticketListPage = '/ticket_list_page';

  static const String ticketScreen = '/ticket_screen';

  static const String walletPage = '/wallet_page';

  static const String rechargeBalanceScreen = '/recharge_balance_screen';

  static const String selectPaymentMethodOneScreen =
      '/select_payment_method_one_screen';

  static const String rechargeBalancePopUpScreen =
      '/recharge_balance_pop_up_screen';

  static const String buyPackageScreen = '/buy_package_screen';

  static const String selectPaymentMethodScreen =
      '/select_payment_method_screen';

  static const String packageBookingPopUpScreen =
      '/package_booking_pop_up_screen';

  static const String refundPackagePage = '/refund_package_page';

  static const String refundPackageTabContainerScreen =
      '/refund_package_tab_container_screen';

  static const String refundTicketPage = '/refund_ticket_page';

  static const String refundRequestSuccessfullyScreen =
      '/refund_request_successfully_screen';

  static const String profilePage = '/profile_page';

  static const String profileDetailsScreen = '/profile_details_screen';

  static const String editProfileScreen = '/edit_profile_screen';

  static const String addACardDefualtScreen = '/add_a_card_defualt_screen';

  static const String addACardActiveScreen = '/add_a_card_active_screen';

  static const String myCardsScreen = '/my_cards_screen';

  static const String addNewAddressScreen = '/add_new_address_screen';

  static const String myAddressScreen = '/my_address_screen';

  static const String myAddressEditDeleteScreen =
      '/my_address_edit_delete_screen';

  static const String editAddressScreen = '/edit_address_screen';

  static const String myAddressDeleteScreen = '/my_address_delete_screen';

  static const String privacyPolicyScreen = '/privacy_policy_screen';

  static const String logoutScreen = '/logout_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String lostandfoundScreen = '/lostandfound_screen';

  static const String lostandfoundListPage = '/lostandfound_list_page';

  static const String initialRoute = '/initialRoute';

  static routesFactory(settings) {
    switch (settings.name) {
      case AppRoutes.splashScreenOneScreen:
        return getPage(SplashScreenOneScreen(), settings);
      case AppRoutes.onboardingScreenFourScreen:
        return getPage(OnboardingScreenFourScreen(), settings);
      case AppRoutes.onboardingScreenFiveScreen:
        return getPage(OnboardingScreenFiveScreen(), settings);
      case AppRoutes.onboardingScreenSixScreen:
        return getPage(OnboardingScreenSixScreen(), settings);
      case AppRoutes.signUpScreen:
        return getPage(SignUpScreen(), settings);
      case AppRoutes.loginScreen:
        return getPage(LoginScreen(), settings);
      case AppRoutes.loginErrorScreen:
        return getPage(LoginErrorScreen(), settings);
      case AppRoutes.loginForgotPasswordScreen:
        return getPage(LoginForgotPasswordScreen(), settings);
      case AppRoutes.verificationScreen:
        return getPage(VerificationScreen(), settings);
      case AppRoutes.verificationErrorScreen:
        return getPage(VerificationErrorScreen(), settings);
      case AppRoutes.resetPasswordScreen:
        return getPage(ResetPasswordScreen(), settings);
      case AppRoutes.passwordChangeScreen:
        return getPage(PasswordChangeScreen(), settings);
      case AppRoutes.homeContainerScreen:
        return getPage(HomeContainerScreen(), settings);
      case AppRoutes.homeSearchScreen:
        return getPage(HomeSearchScreen(), settings);
      case AppRoutes.homeSearchFilledScreen:
        return getPage(HomeSearchFilledScreen(), settings);
      case AppRoutes.recommendedRoutesScreen:
        return getPage(RecommendedRoutesScreen(), settings);
      case AppRoutes.busRoutesScreen:
        return getPage(BusRoutesScreen(), settings);
      case AppRoutes.mapScreen:
        return getPage(MapScreen(isShare: false), settings);
      case AppRoutes.shareRideScreen:
        return getPage(ShareRideScreen(), settings);
      case AppRoutes.ticketScreen:
        return getPage(TicketScreen(), settings);
      case AppRoutes.rechargeBalanceScreen:
        return getPage(RechargeBalanceScreen(), settings);
      case AppRoutes.selectPaymentMethodOneScreen:
        return getPage(SelectPaymentMethodOneScreen(), settings);
      case AppRoutes.rechargeBalancePopUpScreen:
        return getPage(RechargeBalancePopUpScreen(), settings);
      case AppRoutes.buyPackageScreen:
        return getPage(BuyPackageScreen(), settings);
      case AppRoutes.selectPaymentMethodScreen:
        return getPage(SelectPaymentMethodScreen(), settings);
      case AppRoutes.packageBookingPopUpScreen:
        return getPage(PackageBookingPopUpScreen(), settings);
      case AppRoutes.refundPackageTabContainerScreen:
        return getPage(RefundPackageTabContainerScreen(), settings);
      case AppRoutes.refundRequestSuccessfullyScreen:
        return getPage(RefundRequestSuccessfullyScreen(), settings);
      case AppRoutes.profileDetailsScreen:
        return getPage(ProfileDetailsScreen(), settings);
      case AppRoutes.editProfileScreen:
        return getPage(EditProfileScreen(), settings);
      case AppRoutes.addACardDefualtScreen:
        return getPage(AddACardDefualtScreen(), settings);
      case AppRoutes.addACardActiveScreen:
        return getPage(AddACardActiveScreen(), settings);
      case AppRoutes.myCardsScreen:
        return getPage(MyCardsScreen(), settings);
      case AppRoutes.addNewAddressScreen:
        return getPage(AddNewAddressScreen(), settings);
      case AppRoutes.myAddressScreen:
        return getPage(MyAddressScreen(), settings);
      case AppRoutes.myAddressEditDeleteScreen:
        return getPage(MyAddressEditDeleteScreen(), settings);
      case AppRoutes.editAddressScreen:
        return getPage(EditAddressScreen(), settings);
      case AppRoutes.myAddressDeleteScreen:
        return getPage(MyAddressDeleteScreen(), settings);
      case AppRoutes.privacyPolicyScreen:
        return getPage(PrivacyPolicyScreen(), settings);
      case AppRoutes.lostandfoundScreen:
        return getPage(LostandfoundScreen(), settings);
      case AppRoutes.logoutScreen:
        return getPage(LogoutScreen(), settings);
      case AppRoutes.appNavigationScreen:
        return getPage(AppNavigationScreen(), settings);
      case AppRoutes.initialRoute:
        return getPage(SplashScreenOneScreen(), settings);
      default:
        return null;
    }
  }

  static getPage(var child, var settings) {
    var type = PageTransitionType.rightToLeft;

    return PageTransition(
      child: child,
      type: type,
      settings: settings,
    );
  }

  static List<GetPage> pages = [
    GetPage(
      name: splashScreenOneScreen,
      page: () => SplashScreenOneScreen(),
      bindings: [
        SplashScreenOneBinding(),
      ],
    ),
    GetPage(
      name: onboardingScreenFourScreen,
      page: () => OnboardingScreenFourScreen(),
      bindings: [
        OnboardingScreenFourBinding(),
      ],
    ),
    GetPage(
      name: onboardingScreenFiveScreen,
      page: () => OnboardingScreenFiveScreen(),
      bindings: [
        OnboardingScreenFiveBinding(),
      ],
    ),
    GetPage(
      name: onboardingScreenSixScreen,
      page: () => OnboardingScreenSixScreen(),
      bindings: [
        OnboardingScreenSixBinding(),
      ],
    ),
    GetPage(
      name: signUpScreen,
      page: () => SignUpScreen(),
      bindings: [
        SignUpBinding(),
      ],
    ),
    GetPage(
      name: loginScreen,
      page: () => LoginScreen(),
      bindings: [
        LoginBinding(),
      ],
    ),
    GetPage(
      name: loginErrorScreen,
      page: () => LoginErrorScreen(),
      bindings: [
        LoginErrorBinding(),
      ],
    ),
    GetPage(
      name: loginForgotPasswordScreen,
      page: () => LoginForgotPasswordScreen(),
      bindings: [
        LoginForgotPasswordBinding(),
      ],
    ),
    GetPage(
      name: verificationScreen,
      page: () => VerificationScreen(),
      bindings: [
        VerificationBinding(),
      ],
    ),
    GetPage(
      name: verificationErrorScreen,
      page: () => VerificationErrorScreen(),
      bindings: [
        VerificationErrorBinding(),
      ],
    ),
    GetPage(
      name: resetPasswordScreen,
      page: () => ResetPasswordScreen(),
      bindings: [
        ResetPasswordBinding(),
      ],
    ),
    GetPage(
      name: passwordChangeScreen,
      page: () => PasswordChangeScreen(),
      bindings: [
        PasswordChangeBinding(),
      ],
    ),
    GetPage(
      name: homeContainerScreen,
      page: () => HomeContainerScreen(),
      bindings: [
        HomeContainerBinding(),
      ],
    ),
    GetPage(
      name: homeSearchScreen,
      page: () => HomeSearchScreen(),
      bindings: [
        HomeSearchBinding(),
      ],
    ),
    GetPage(
      name: homeSearchFilledScreen,
      page: () => HomeSearchFilledScreen(),
      bindings: [
        HomeSearchFilledBinding(),
      ],
    ),
    GetPage(
      name: recommendedRoutesScreen,
      page: () => RecommendedRoutesScreen(),
      bindings: [
        RecommendedRoutesBinding(),
      ],
    ),
    GetPage(
      name: busRoutesScreen,
      page: () => BusRoutesScreen(),
      bindings: [
        BusRoutesBinding(),
      ],
    ),
    GetPage(
      name: mapScreen,
      page: () => MapScreen(),
      bindings: [
        MapBinding(),
      ],
    ),
    GetPage(
      name: shareRideScreen,
      page: () => ShareRideScreen(),
      bindings: [
        ShareRideBinding(),
      ],
    ),
    GetPage(
      name: ticketScreen,
      page: () => TicketScreen(),
      bindings: [
        TicketBinding(),
      ],
    ),
    GetPage(
      name: rechargeBalanceScreen,
      page: () => RechargeBalanceScreen(),
      bindings: [
        RechargeBalanceBinding(),
      ],
    ),
    GetPage(
      name: selectPaymentMethodOneScreen,
      page: () => SelectPaymentMethodOneScreen(),
      bindings: [
        SelectPaymentMethodOneBinding(),
      ],
    ),
    GetPage(
      name: rechargeBalancePopUpScreen,
      page: () => RechargeBalancePopUpScreen(),
      bindings: [
        RechargeBalancePopUpBinding(),
      ],
    ),
    GetPage(
      name: buyPackageScreen,
      page: () => BuyPackageScreen(),
      bindings: [
        BuyPackageBinding(),
      ],
    ),
    GetPage(
      name: selectPaymentMethodScreen,
      page: () => SelectPaymentMethodScreen(),
      bindings: [
        SelectPaymentMethodBinding(),
      ],
    ),
    GetPage(
      name: packageBookingPopUpScreen,
      page: () => PackageBookingPopUpScreen(),
      bindings: [
        PackageBookingPopUpBinding(),
      ],
    ),
    GetPage(
      name: refundPackageTabContainerScreen,
      page: () => RefundPackageTabContainerScreen(),
      bindings: [
        RefundPackageTabContainerBinding(),
      ],
    ),
    GetPage(
      name: refundRequestSuccessfullyScreen,
      page: () => RefundRequestSuccessfullyScreen(),
      bindings: [
        RefundRequestSuccessfullyBinding(),
      ],
    ),
    GetPage(
      name: profileDetailsScreen,
      page: () => ProfileDetailsScreen(),
      bindings: [
        ProfileDetailsBinding(),
      ],
    ),
    GetPage(
      name: editProfileScreen,
      page: () => EditProfileScreen(),
      bindings: [
        EditProfileBinding(),
      ],
    ),
    GetPage(
      name: addACardDefualtScreen,
      page: () => AddACardDefualtScreen(),
      bindings: [
        AddACardDefualtBinding(),
      ],
    ),
    GetPage(
      name: addACardActiveScreen,
      page: () => AddACardActiveScreen(),
      bindings: [
        AddACardActiveBinding(),
      ],
    ),
    GetPage(
      name: myCardsScreen,
      page: () => MyCardsScreen(),
      bindings: [
        MyCardsBinding(),
      ],
    ),
    GetPage(
      name: addNewAddressScreen,
      page: () => AddNewAddressScreen(),
      bindings: [
        AddNewAddressBinding(),
      ],
    ),
    GetPage(
      name: myAddressScreen,
      page: () => MyAddressScreen(),
      bindings: [
        MyAddressBinding(),
      ],
    ),
    GetPage(
      name: myAddressEditDeleteScreen,
      page: () => MyAddressEditDeleteScreen(),
      bindings: [
        MyAddressEditDeleteBinding(),
      ],
    ),
    GetPage(
      name: editAddressScreen,
      page: () => EditAddressScreen(),
      bindings: [
        EditAddressBinding(),
      ],
    ),
    GetPage(
      name: myAddressDeleteScreen,
      page: () => MyAddressDeleteScreen(),
      bindings: [
        MyAddressDeleteBinding(),
      ],
    ),
    GetPage(
      name: privacyPolicyScreen,
      page: () => PrivacyPolicyScreen(),
      bindings: [
        PrivacyPolicyBinding(),
      ],
    ),
    GetPage(
      name: lostandfoundScreen,
      page: () => LostandfoundScreen(),
      bindings: [
        LostandfoundBinding(),
      ],
    ),
    GetPage(
      name: logoutScreen,
      page: () => LogoutScreen(),
      bindings: [
        LogoutBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SplashScreenOneScreen(),
      bindings: [
        SplashScreenOneBinding(),
      ],
    )
  ];
}


void exitApp(){
  if(Platform.isIOS){
    exit(0);
  }else {
    SystemNavigator.pop();
  }
}
