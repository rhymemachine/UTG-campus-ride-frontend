import 'package:bustrackingapp/core/app_export.dart';import 'package:bustrackingapp/presentation/my_cards_screen/models/my_cards_model.dart';import 'package:flutter/material.dart';/// A controller class for the MyCardsScreen.
///
/// This class manages the state of the MyCardsScreen, including the
/// current myCardsModelObj
class MyCardsController extends GetxController {TextEditingController paypalvalueoneController = TextEditingController();

TextEditingController visavalueoneController = TextEditingController();

TextEditingController applepayoneController = TextEditingController();

Rx<MyCardsModel> myCardsModelObj = MyCardsModel().obs;

@override void onClose() { super.onClose(); paypalvalueoneController.dispose(); visavalueoneController.dispose(); applepayoneController.dispose(); } 
 }
