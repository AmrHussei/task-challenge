import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_challenge/widgets/text_utils.dart';
import '../core/utils/assets_data.dart';
import '../core/utils/my_colors.dart';

class AddNewOrdersWidget extends StatelessWidget {
  const AddNewOrdersWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // add new orders
      },
      child: Container(
        height: 42.h,
        width: 168.w,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(21.sp)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 16.h,
              width: 16.h,
              child: SvgPicture.asset(
                MyAssets.addIcon,
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              width: 8.w,
            ),
            TextUtils(
              fontSize: 12.sp,
              fontWeight: FontWeight.w500,
              text: 'إضافة طلبات جديدة',
              color: MyColors.mainColor,
            ),
          ],
        ),
      ),
    );
  }
}
