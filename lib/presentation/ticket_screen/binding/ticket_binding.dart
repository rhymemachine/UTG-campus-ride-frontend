import '../controller/ticket_controller.dart';
import 'package:get/get.dart';

/// A binding class for the TicketScreen.
///
/// This class ensures that the TicketController is created when the
/// TicketScreen is first loaded.
class TicketBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TicketController());
  }
}
