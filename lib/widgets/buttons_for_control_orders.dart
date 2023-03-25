import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_challenge/widgets/my_outlined_button.dart';
import 'package:task_challenge/widgets/text_utils.dart';

import '../core/utils/my_colors.dart';

class ButtonsForControlOrders extends StatelessWidget {
  const ButtonsForControlOrders({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          MyOutlinedButton(onPressed: () {}, text: 'إنهاء الطلب'),
          MyOutlinedButton(onPressed: () {}, text: 'استلام الطلب'),
          MaterialButton(
            onPressed: () {},
            color: MyColors.mainColor,
            padding: EdgeInsets.symmetric(
              horizontal: 15.w,
              vertical: 18.h,
            ),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.sp)),
            child: TextUtils(
              fontSize: 12.sp,
              fontWeight: FontWeight.w500,
              text: 'الغاء الطلب',
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
