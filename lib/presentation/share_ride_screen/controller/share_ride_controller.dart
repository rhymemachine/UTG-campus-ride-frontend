import 'package:bustrackingapp/core/app_export.dart';
import 'package:bustrackingapp/presentation/share_ride_screen/models/share_ride_model.dart';

/// A controller class for the ShareRideScreen.
///
/// This class manages the state of the ShareRideScreen, including the
/// current shareRideModelObj
class ShareRideController extends GetxController {
  Rx<ShareRideModel> shareRideModelObj = ShareRideModel().obs;


  RxInt selectedIndex = 0.obs;
}

