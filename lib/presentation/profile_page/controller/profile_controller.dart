import 'package:bustrackingapp/core/app_export.dart';
import 'package:bustrackingapp/presentation/profile_page/models/profile_model.dart';

/// A controller class for the ProfilePage.
///
/// This class manages the state of the ProfilePage, including the
/// current profileModelObj
class ProfileController extends GetxController {
  ProfileController(this.profileModelObj);

  Rx<ProfileModel> profileModelObj;

  Future<void> logout() async {
    try {
      // Clear the authentication token
      // Example: Clear from storage if saved
      await PrefUtils.clearAuthToken();

      // Navigate to the login screen
      Get.offAllNamed(AppRoutes.loginScreen);
    } catch (e) {
      Get.snackbar(
        'Error',
        'Failed to logout. Please try again.',
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }
}
