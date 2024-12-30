import 'package:bustrackingapp/core/app_export.dart';
import 'package:bustrackingapp/presentation/refund_request_successfully_screen/models/refund_request_successfully_model.dart';

/// A controller class for the RefundRequestSuccessfullyScreen.
///
/// This class manages the state of the RefundRequestSuccessfullyScreen, including the
/// current refundRequestSuccessfullyModelObj
class RefundRequestSuccessfullyController extends GetxController {
  Rx<RefundRequestSuccessfullyModel> refundRequestSuccessfullyModelObj =
      RefundRequestSuccessfullyModel().obs;
}
