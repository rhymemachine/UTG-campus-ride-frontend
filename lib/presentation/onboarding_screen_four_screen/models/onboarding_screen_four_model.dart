import 'package:get/get.dart';
import '../../../core/utils/image_constant.dart';
import 'slider_item_model.dart';

/// This class defines the variables used in the [onboarding_screen_four_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class OnboardingScreenFourModel {
  Rx<List<SliderItemModel>> sliderItemList =
      Rx(List.generate(list.length, (index) => list[index]));

  static List<SliderItemModel> list = [

    SliderItemModel(
        title: "msg_now_find_the_exact".tr,
        image: ImageConstant.intro1,
        desc: "msg_the_convenience".tr
    ),
    SliderItemModel(
        title: "msg_effortless_reliable".tr,
        image: ImageConstant.intro2,
        desc: "msg_our_services_are".tr
    ),
    SliderItemModel(
        title: "msg_digital_wallet_system".tr,
        image: ImageConstant.intro3,
        desc: "msg_digital_wallet_system2".tr
    ),

  ];

}
