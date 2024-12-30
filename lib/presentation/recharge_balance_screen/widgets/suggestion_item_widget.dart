import '../controller/recharge_balance_controller.dart';
import '../models/suggestion_item_model.dart';
import 'package:bustrackingapp/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SuggestionItemWidget extends StatelessWidget {
  SuggestionItemWidget(
    this.suggestionItemModelObj, {
    Key? key,
        this.index,
  }) : super(
          key: key,
        );
  int? index;

  SuggestionItemModel suggestionItemModelObj;

  RechargeBalanceController rechargeBalanceController = Get.find<RechargeBalanceController>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {

      },
      child: Obx(
        () => RawChip(
          padding: getPadding(
            left: 16,
            top: 11,
            right: 16,
            bottom: 11,
          ),
          showCheckmark: false,
          labelPadding: EdgeInsets.zero,
          label: Text(
            suggestionItemModelObj.amount ?? "",
            style: TextStyle(
              color: appTheme.black900,
              fontSize: getFontSize(
                16,
              ),
              fontFamily: 'Archivo',
              fontWeight: FontWeight.w600,
            ),
          ),
          selected: rechargeBalanceController.isSelected.value == index,
          backgroundColor: appTheme.gray100,
          selectedColor: appTheme.gray100,
          shape: rechargeBalanceController.isSelected.value == index
              ? RoundedRectangleBorder(
                  side: BorderSide(
                    color: appTheme.black900.withOpacity(0.6),
                    width: getHorizontalSize(1),
                  ),
                  borderRadius: BorderRadius.circular(
                    getHorizontalSize(12),
                  ),
                )
              : RoundedRectangleBorder(
                  side: BorderSide.none,
                  borderRadius: BorderRadius.circular(
                    getHorizontalSize(12),
                  ),
                ),
          onSelected: (value) {
            rechargeBalanceController.isSelected.value = index!;
            rechargeBalanceController.selectedAmount.value = suggestionItemModelObj.amount??"";
          },
        ),
      ),
    );
  }
}
