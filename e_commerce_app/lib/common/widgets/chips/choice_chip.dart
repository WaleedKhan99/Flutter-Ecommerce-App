import 'package:e_commerce_app/common/widgets/cutom_shapes/circular_container.dart';
import 'package:e_commerce_app/utils/constraints/colors.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WChoiceChip extends StatelessWidget {
  const WChoiceChip({
    super.key,
    required this.text,
    required this.selected,
    this.onSelected,
  });

  final String text;
  final bool selected;
  final void Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    final isColor = WHelperfunction.getColor(text) != null;
    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
      child: ChoiceChip(
        label: isColor ? const SizedBox() : Text(text),
        selected: selected,
        onSelected: onSelected,
        labelStyle: TextStyle(color: selected ? WColors.white : null),
        avatar: isColor
            ? WCircularContainer(
                width: 50.w,
                height: 50.h,
                backgroundColor: WHelperfunction.getColor(text)!)
            : null,
        shape: isColor ? const CircleBorder() : null,
        labelPadding: isColor ? const EdgeInsets.all(0) : null,
        padding: isColor ? const EdgeInsets.all(0) : null,
        backgroundColor: isColor ? WHelperfunction.getColor(text)! : null,
      ),
    );
  }
}
