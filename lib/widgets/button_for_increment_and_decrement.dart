import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../core/utils/my_colors.dart';

class ButtonForIncrementAndDecrement extends StatelessWidget {
  const ButtonForIncrementAndDecrement({
    super.key,
    required this.onTap,
    required this.icon,
  });
  final Function onTap;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        //decrement and increment number of orders
        onTap;
      },
      child: Icon(
        icon,
        size: 18.sp,
        color: MyColors.mainColor,
      ),
    );
  }
}
