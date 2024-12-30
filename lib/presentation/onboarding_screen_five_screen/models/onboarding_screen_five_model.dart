import 'package:get/get.dart';import 'busservices_item_model.dart';/// This class defines the variables used in the [onboarding_screen_five_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class OnboardingScreenFiveModel {Rx<List<BusservicesItemModel>> busservicesItemList = Rx(List.generate(1,(index) => BusservicesItemModel()));

 }
