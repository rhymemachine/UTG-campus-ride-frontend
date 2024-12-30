import 'package:bustrackingapp/core/app_export.dart';
import 'package:bustrackingapp/presentation/splash_screen_one_screen/models/splash_screen_one_model.dart';

/// A controller class for the SplashScreenOneScreen.
///
/// This class manages the state of the SplashScreenOneScreen, including the
/// current splashScreenOneModelObj
class SplashScreenOneController extends GetxController {
  Rx<SplashScreenOneModel> splashScreenOneModelObj = SplashScreenOneModel().obs;

  @override
  void onReady() {

    // Future.delayed(const Duration(milliseconds: 3000), () {
    //   Get.offNamed(
    //     AppRoutes.homeContainerScreen,
    //   );
    // });

    loginFlow();
  }



  loginFlow() async {
    bool isIntro = await PrefUtils.getIsIntro();
    bool isLogin = await PrefUtils.getIsLogin();
    Future.delayed(const Duration(milliseconds: 3000), () {

      if (isIntro) {
        Get.offNamed(
          AppRoutes.onboardingScreenFourScreen,
        );
      } else {
        if (isLogin) {
          Get.toNamed(
            AppRoutes.homeContainerScreen,
          );
        } else {
          Get.offNamed(
            AppRoutes.loginScreen,
          );
        }
      }
    });
  }

}
