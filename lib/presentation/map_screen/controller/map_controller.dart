import 'package:bustrackingapp/core/app_export.dart';
import 'package:bustrackingapp/presentation/map_screen/models/map_model.dart';


/// A controller class for the MapScreen.
///
/// This class manages the state of the MapScreen, including the
/// current mapModelObj
class MapController extends GetxController {
  Rx<MapModel> mapModelObj = MapModel().obs;

}
