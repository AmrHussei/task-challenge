import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_challenge/widgets/text_utils.dart';

import '../core/utils/my_colors.dart';

class MyOutlinedButton extends StatelessWidget {
  const MyOutlinedButton({
    super.key,
    required this.onPressed,
    required this.text,
  });
  final Function onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.sp)),
        side: const BorderSide(width: 1.2, color: MyColors.mainColor),
        padding: EdgeInsets.symmetric(
          horizontal: 15.w,
          vertical: 18.h,
        ),
      ),
      onPressed: () {
        onPressed;
      },
      child: TextUtils(
        fontSize: 12.sp,
        fontWeight: FontWeight.w500,
        text: text,
        color: MyColors.mainColor,
      ),
    );
  }
}
