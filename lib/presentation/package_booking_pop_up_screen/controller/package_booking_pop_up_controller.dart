import 'package:bustrackingapp/core/app_export.dart';
import 'package:bustrackingapp/presentation/package_booking_pop_up_screen/models/package_booking_pop_up_model.dart';

/// A controller class for the PackageBookingPopUpScreen.
///
/// This class manages the state of the PackageBookingPopUpScreen, including the
/// current packageBookingPopUpModelObj
class PackageBookingPopUpController extends GetxController {
  Rx<PackageBookingPopUpModel> packageBookingPopUpModelObj =
      PackageBookingPopUpModel().obs;
}
