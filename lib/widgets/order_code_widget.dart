import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_challenge/widgets/text_utils.dart';

import '../core/utils/my_colors.dart';

class OrderCodeWidget extends StatelessWidget {
  const OrderCodeWidget({
    super.key,
    required this.orderCode,
  });
  final String orderCode;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 40.h,
          width: 100.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.sp),
            color: MyColors.secondColor,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextUtils(
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
                text: 'كود الطلب ',
                color: MyColors.mainColor,
              ),
              TextUtils(
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
                text: orderCode,
                color: MyColors.mainColor,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
