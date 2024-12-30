import 'package:bustrackingapp/core/app_export.dart';import 'package:bustrackingapp/presentation/ticket_screen/models/ticket_model.dart';/// A controller class for the TicketScreen.
///
/// This class manages the state of the TicketScreen, including the
/// current ticketModelObj
class TicketController extends GetxController {Rx<TicketModel> ticketModelObj = TicketModel().obs;

 }
