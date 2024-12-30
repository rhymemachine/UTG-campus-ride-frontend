import '../controller/add_a_card_defualt_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AddACardDefualtScreen.
///
/// This class ensures that the AddACardDefualtController is created when the
/// AddACardDefualtScreen is first loaded.
class AddACardDefualtBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddACardDefualtController());
  }
}
