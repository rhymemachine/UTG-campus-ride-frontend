import '../controller/my_address_edit_delete_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MyAddressEditDeleteScreen.
///
/// This class ensures that the MyAddressEditDeleteController is created when the
/// MyAddressEditDeleteScreen is first loaded.
class MyAddressEditDeleteBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MyAddressEditDeleteController());
  }
}
