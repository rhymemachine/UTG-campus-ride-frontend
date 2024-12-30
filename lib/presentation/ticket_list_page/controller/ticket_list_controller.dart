import 'package:bustrackingapp/core/app_export.dart';
import 'package:bustrackingapp/presentation/ticket_list_page/models/ticket_list_model.dart';

/// A controller class for the TicketListPage.
///
/// This class manages the state of the TicketListPage, including the
/// current ticketListModelObj
class TicketListController extends GetxController {
  TicketListController(this.ticketListModelObj);

  Rx<TicketListModel> ticketListModelObj;


}
