import 'package:bustrackingapp/core/app_export.dart';
import 'package:bustrackingapp/presentation/home_container_screen/models/home_container_model.dart';

/// A controller class for the HomeContainerScreen.
///
/// This class manages the state of the HomeContainerScreen, including the
/// current homeContainerModelObj
class HomeContainerController extends GetxController {
  Rx<HomeContainerModel> homeContainerModelObj = HomeContainerModel().obs;
  RxInt selectedIndex = 0.obs;
}
