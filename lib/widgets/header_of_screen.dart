import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_challenge/widgets/add_new_orders_widget.dart';
import 'package:task_challenge/widgets/button_for_pop.dart';
import 'package:task_challenge/widgets/text_utils.dart';

import '../core/utils/my_colors.dart';

class HeaderOfScreen extends StatelessWidget {
  const HeaderOfScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 139.h,
      width: double.infinity,
      color: MyColors.mainColor,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Row(
          children: [
            const AddNewOrdersWidget(),
            SizedBox(width: 45.w),
            TextUtils(
              fontSize: 22.sp,
              fontWeight: FontWeight.w500,
              text: 'طلب حالي',
              color: Colors.white,
            ),
            SizedBox(width: 10.w),
            const ButtonForPop()
          ],
        ),
      ),
    );
  }
}
