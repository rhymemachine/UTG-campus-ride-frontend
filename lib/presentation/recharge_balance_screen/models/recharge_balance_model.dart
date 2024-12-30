import 'package:get/get.dart';
import 'suggestion_item_model.dart';

/// This class defines the variables used in the [recharge_balance_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class RechargeBalanceModel {
  Rx<List<SuggestionItemModel>> suggestionItemList =
      Rx(List.generate(list.length, (index) => list[index]));

  static List<SuggestionItemModel> list = [
    SuggestionItemModel(
      amount: "lbl_5_00".tr
    ),SuggestionItemModel(
      amount: "lbl_10_00".tr
    ),SuggestionItemModel(
      amount: "lbl_25_00".tr
    ),SuggestionItemModel(
      amount: "lbl_50_00".tr
    )
  ];
}
