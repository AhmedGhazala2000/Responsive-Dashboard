import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expenses_item_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/all_expenses_item_header.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem(
      {Key? key, required this.itemModel, required this.isSelected})
      : super(key: key);
  final AllExpensesItemModel itemModel;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      decoration: ShapeDecoration(
        color: isSelected ? const Color(0xff4EB7F2) : Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: BorderSide(
            color:
                isSelected ? const Color(0xff4EB7F2) : const Color(0xffF1F1F1),
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            image: itemModel.image,
            isSelected: isSelected,
          ),
          const SizedBox(
            height: 34,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            alignment: Alignment.centerLeft,
            child: Text(
              itemModel.title,
              style: AppStyles.styleSemiBold16(context).copyWith(
                color: isSelected ? Colors.white : null,
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            alignment: Alignment.centerLeft,
            child: Text(
              itemModel.date,
              style: AppStyles.styleRegular14(context).copyWith(
                color: isSelected ? const Color(0xffFAFAFA) : null,
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            alignment: Alignment.centerLeft,
            child: Text(
              itemModel.price,
              style: AppStyles.styleSemiBold24(context).copyWith(
                color: isSelected ? Colors.white : null,
              ),
            ),
          )
        ],
      ),
    );
  }
}
