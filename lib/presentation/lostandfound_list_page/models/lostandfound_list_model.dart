import 'package:get/get.dart';
import 'lost_item_model.dart';

/// This class defines the variables used in the [ticket_list_page],
/// and is typically used to hold data that is passed between different parts of the application.
class LostandfoundListModel {
  Rx<List<LostItemModel>> lostItemList =
      Rx(List.generate(list.length, (index) => list[index]));

  static List<LostItemModel> list = [
    LostItemModel(
      title: "Wallet",
      description: "Black leather.",
      lostAt: "Near Central Park, NYC on Dec 15, 2024",
      status: "Missing",
    ),
    LostItemModel(
      title: "Laptop",
      description: "silver MacBook.",
      lostAt: "Cafeteria at Main Street on Dec 10, 2024",
      status: "Found",
    ),

  ];
}
