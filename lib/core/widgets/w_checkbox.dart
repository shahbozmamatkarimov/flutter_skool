import 'package:flutter/material.dart';
import 'package:skool/core/resources/app_colors.dart';

class WCheckbox extends StatefulWidget {
  const WCheckbox({super.key});

  @override
  State<WCheckbox> createState() => _WCheckboxState();
}

class _WCheckboxState extends State<WCheckbox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return AppColors.white;
      }
      return AppColors.c_2a;
    }

    return Checkbox(
      checkColor: AppColors.white,
      fillColor: MaterialStateProperty.resolveWith(getColor),
      value: isChecked,
      onChanged: (bool? value) {
        setState(() {
          isChecked = value!;
        });
      },
    );
  }
}
