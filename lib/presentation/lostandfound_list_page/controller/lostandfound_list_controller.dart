import 'package:bustrackingapp/core/app_export.dart';
import 'package:bustrackingapp/presentation/lostandfound_list_page/models/lostandfound_list_model.dart';

/// A controller class for the TicketListPage.
///
/// This class manages the state of the TicketListPage, including the
/// current ticketListModelObj
class LostandfoundListController extends GetxController {
  LostandfoundListController(this.lostandfoundListModelObj);

  Rx<LostandfoundListModel> lostandfoundListModelObj;


}
