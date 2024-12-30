import 'package:bustrackingapp/core/app_export.dart';import 'package:bustrackingapp/presentation/select_payment_method_screen/models/select_payment_method_model.dart';/// A controller class for the SelectPaymentMethodScreen.
///
/// This class manages the state of the SelectPaymentMethodScreen, including the
/// current selectPaymentMethodModelObj
class SelectPaymentMethodController extends GetxController {Rx<SelectPaymentMethodModel> selectPaymentMethodModelObj = SelectPaymentMethodModel().obs;

Rx<String> radioGroup = "".obs;

Rx<String> radioGroup1 = "".obs;

Rx<String> radioGroup2 = "".obs;

Rx<String> radioGroup3 = "".obs;

Rx<String> radioGroup4 = "".obs;

RxInt selectedMethod = 0.obs;

 }
