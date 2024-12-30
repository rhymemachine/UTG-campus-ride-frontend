import 'package:bustrackingapp/core/app_export.dart';import 'package:bustrackingapp/presentation/recommended_routes_screen/models/recommended_routes_model.dart';/// A controller class for the RecommendedRoutesScreen.
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
///
/// This class manages the state of the RecommendedRoutesScreen, including the
/// current recommendedRoutesModelObj
// class RecommendedRoutesController extends GetxController {Rx<RecommendedRoutesModel> recommendedRoutesModelObj = RecommendedRoutesModel().obs;
//
//  }

class RecommendedRoutesController extends GetxController {
 Rx<RecommendedRoutesModel> recommendedRoutesModelObj = RecommendedRoutesModel().obs;

 RxList<dynamic> pickupPoints = <dynamic>[].obs; // Store the fetched data


 Future<void> fetchPickupPoints() async {
  try {
   // Retrieve token from SharedPreferences
   final prefs = await SharedPreferences.getInstance();
   // final token = prefs.getString('authToken');
    final token = '7|l0WNGFgVIoQbpS2krJGQeFzqfgw5hHxHlXE1q5hLf184bcd4';
   // if (token == null) {
   //  Get.snackbar(
   //   'Error',
   //   'User is not logged in. Please log in again.',
   //   snackPosition: SnackPosition.BOTTOM,
   //  );
   //  return;
   // }

   // Make the GET request
   final response = await GetConnect().get(
    'https://bus.utg.gm/api/pickup-points',
    headers: {
     'Authorization': 'Bearer $token',
    },
   );

   if (response.statusCode == 200) {
    // Update the observable list
    pickupPoints.value = response.body;
    print('Fetched pickup points: ${response.body}');
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
    'An error occurred while fetching pickup points.',
    snackPosition: SnackPosition.BOTTOM,
   );
   print('Error fetching pickup points: $e');
  }
 }
}