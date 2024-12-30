import 'package:bustrackingapp/presentation/home_container_screen/controller/home_container_controller.dart';

import '../../widgets/custom_elevated_button.dart';
import '../lostandfound_list_page/widgets/lost_item_widget.dart';
import 'controller/lostandfound_list_controller.dart';
import 'models/lost_item_model.dart';
import 'models/lostandfound_list_model.dart';
import 'package:bustrackingapp/core/app_export.dart';
import 'package:bustrackingapp/widgets/app_bar/appbar_title.dart';
import 'package:bustrackingapp/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore_for_file: must_be_immutable


class LostandfoundListPage extends StatelessWidget {
  LostandfoundListPage({Key? key}) : super(key: key);

  final LostandfoundListController controller =
  Get.put(LostandfoundListController(LostandfoundListModel().obs));

  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController lostAtController = TextEditingController();
  final TextEditingController statusController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return WillPopScope(
      onWillPop: () async {
        HomeContainerController homeContainerController =
        Get.put(HomeContainerController());
        homeContainerController.selectedIndex.value = 0;
        return false;
      },
      child: Scaffold(
          backgroundColor: appTheme.whiteA700,
          body: Container(
              width: double.maxFinite,
              decoration: AppDecoration.white,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      padding: getPadding(top: 19, bottom: 19),
                      decoration: AppDecoration.outlineOnPrimaryContainer,
                      child: Row(
                        children: [
                          Expanded(
                            child: CustomAppBar(
                              title: AppbarTitle(
                                text: "Lost & Found".tr,
                                margin: getMargin(left: 16),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 28, right: 15),
                            child: IconButton(
                              icon: Icon(Icons.add_circle_outlined),
                              onPressed: () {
                                _showAddLostItemModal(context);
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                        child: SizedBox(
                            width: double.maxFinite,
                            child: Container(
                                padding: getPadding(left: 16, right: 16),
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Expanded(
                                          child: Padding(
                                              padding: getPadding(top: 24),
                                              child: Obx(() => ListView.separated(
                                                padding: EdgeInsets.zero,
                                                shrinkWrap: true,
                                                separatorBuilder:
                                                    (context, index) {
                                                  return SizedBox(
                                                      height:
                                                      getVerticalSize(
                                                          16));
                                                },
                                                itemCount: controller
                                                    .lostandfoundListModelObj
                                                    .value
                                                    .lostItemList
                                                    .value
                                                    .length,
                                                itemBuilder:
                                                    (context, index) {
                                                  LostItemModel model =
                                                  controller
                                                      .lostandfoundListModelObj
                                                      .value
                                                      .lostItemList
                                                      .value[index];
                                                  return LostItemWidget(
                                                    model,
                                                    onTapBustrip: () {
                                                      onTapBustrip();
                                                    },
                                                    index: index,
                                                  );
                                                },
                                              )))),
                                    ])))),
                  ]))),
    );
  }

  /// Displays a modal to add a lost item.
  void _showAddLostItemModal(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return Padding(
          padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
              left: 16,
              right: 16,
              top: 16),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  controller: titleController,
                  decoration: InputDecoration(
                    labelText: 'Title',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 16),
                TextField(
                  controller: descriptionController,
                  decoration: InputDecoration(
                    labelText: 'Description',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 16),
                TextField(
                  controller: lostAtController,
                  decoration: InputDecoration(
                    labelText: 'Lost At',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 16),
                TextField(
                  controller: statusController,
                  decoration: InputDecoration(
                    labelText: 'Status',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 16),
                CustomElevatedButton(
                  text: "Save Changes",
                  margin: getMargin(left: 16, right: 16, bottom: 40),
                  onTap: () {
                    _submitLostItem();
                    Navigator.pop(context); // Close modal after submitting
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }


  /// Handles form submission
  void _submitLostItem() {
    final title = titleController.text;
    final description = descriptionController.text;
    final lostAt = lostAtController.text;
    final status = statusController.text;

    if (title.isNotEmpty &&
        description.isNotEmpty &&
        lostAt.isNotEmpty &&
        status.isNotEmpty) {
      // Add logic to save the lost item
      print('Title: $title');
      print('Description: $description');
      print('Lost At: $lostAt');
      print('Status: $status');
    } else {
      print('Please fill all fields');
    }
  }

  onTapBustrip() {
    Get.toNamed(
      AppRoutes.lostandfoundScreen,
    );
  }
}

