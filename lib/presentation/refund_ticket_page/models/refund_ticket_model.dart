import 'package:get/get.dart';import 'ticket_item_model.dart';/// This class defines the variables used in the [refund_ticket_page],
/// and is typically used to hold data that is passed between different parts of the application.
class RefundTicketModel {Rx<List<TicketItemModel>> ticketItemList = Rx(List.generate(3,(index) => TicketItemModel()));

 }
