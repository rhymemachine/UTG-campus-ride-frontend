import 'package:bustrackingapp/core/app_export.dart';import 'package:bustrackingapp/presentation/password_change_screen/models/password_change_model.dart';/// A controller class for the PasswordChangeScreen.
///
/// This class manages the state of the PasswordChangeScreen, including the
/// current passwordChangeModelObj
class PasswordChangeController extends GetxController {Rx<PasswordChangeModel> passwordChangeModelObj = PasswordChangeModel().obs;

 }
