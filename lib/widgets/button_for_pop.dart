import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ButtonForPop extends StatelessWidget {
  const ButtonForPop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // nav .pop
      },
      child: Container(
        height: 32.w,
        width: 32.w,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(32.w)),
        child: Icon(
          Icons.arrow_forward_ios,
          size: 21.sp,
        ),
      ),
    );
  }
}
