import '../controller/my_address_delete_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MyAddressDeleteScreen.
///
/// This class ensures that the MyAddressDeleteController is created when the
/// MyAddressDeleteScreen is first loaded.
class MyAddressDeleteBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MyAddressDeleteController());
  }
}
