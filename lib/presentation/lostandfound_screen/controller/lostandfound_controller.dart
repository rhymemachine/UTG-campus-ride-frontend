import 'package:bustrackingapp/core/app_export.dart';import 'package:bustrackingapp/presentation/lostandfound_screen/models/lostandfound_model.dart';/// A controller class for the TicketScreen.
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
///
/// This class manages the state of the TicketScreen, including the
/// current ticketModelObj
// class LostandfoundController extends GetxController {Rx<LostandfoundModel> ticketModelObj = LostandfoundModel().obs;
//
//  }



class LostandfoundController extends GetxController {
 Rx<LostandfoundModel> ticketModelObj = LostandfoundModel().obs;
 RxList<dynamic> pickupPoints = <dynamic>[].obs; // To store fetched pickup points

 Future<void> fetchPickupPoints() async {
  try {
   // Retrieve the token from SharedPreferences
   final prefs = await SharedPreferences.getInstance();
   final token = prefs.getString('authToken');

   if (token == null) {
    Get.snackbar(
     'Error',
     'User is not logged in. Please log in again.',
     snackPosition: SnackPosition.BOTTOM,
    );
    return;
   }

   // Make the GET request
   final response = await GetConnect().get(
    'https://bus.utg.gm/api/pickup-points',
    headers: {
     'Authorization': 'Bearer $token', // Include the token in the headers
    },
   );

   if (response.statusCode == 200) {
    // Update the pickup points list
    pickupPoints.value = response.body;
    print('Pickup points fetched successfully: ${response.body}');
   } else {
    Get.snackbar(
     'Error',
     response.body['message'] ?? 'Failed to fetch pickup points',
     snackPosition: SnackPosition.BOTTOM,
    );
   }
  } catch (e) {
   Get.snackbar(
    'Error',
    'An unexpected error occurred while fetching pickup points.',
    snackPosition: SnackPosition.BOTTOM,
   );
   print('Error fetching pickup points: $e');
  }
 }
}

