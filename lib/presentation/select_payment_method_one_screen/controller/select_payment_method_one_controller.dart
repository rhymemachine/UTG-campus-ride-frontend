import 'package:bustrackingapp/core/app_export.dart';import 'package:bustrackingapp/presentation/select_payment_method_one_screen/models/select_payment_method_one_model.dart';/// A controller class for the SelectPaymentMethodOneScreen.
///
/// This class manages the state of the SelectPaymentMethodOneScreen, including the
/// current selectPaymentMethodOneModelObj
class SelectPaymentMethodOneController extends GetxController {Rx<SelectPaymentMethodOneModel> selectPaymentMethodOneModelObj = SelectPaymentMethodOneModel().obs;

Rx<String> radioGroup = "".obs;

Rx<String> radioGroup1 = "".obs;

Rx<String> radioGroup2 = "".obs;

Rx<String> radioGroup3 = "".obs;

Rx<String> radioGroup4 = "".obs;

 }
