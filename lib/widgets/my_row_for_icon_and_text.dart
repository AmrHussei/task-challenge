import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_challenge/widgets/text_utils.dart';

class MyRowForIconAndText extends StatelessWidget {
  const MyRowForIconAndText({
    super.key,
    required this.text,
    required this.icon,
  });
  final String text;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 0, 10.w, 11.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          TextUtils(
            fontSize: 12.sp,
            fontWeight: FontWeight.w600,
            text: text,
            color: Colors.white,
          ),
          SizedBox(
            width: 15.w,
          ),
          SizedBox(
            height: 18.h,
            width: 15.w,
            child: Image.asset(
              icon,
              fit: BoxFit.fill,
            ),
          )
        ],
      ),
    );
  }
}
