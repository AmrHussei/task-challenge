import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_challenge/core/utils/my_colors.dart';
import 'package:task_challenge/widgets/text_utils.dart';
import '../widgets/buttons_for_control_orders.dart';
import '../widgets/header_of_screen.dart';
import '../widgets/orders_viewer.dart';

class TaskChallengeScreen extends StatelessWidget {
  const TaskChallengeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const HeaderOfScreen(),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.h),
              child: TextUtils(
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
                text: 'يمكنك اضافة حتى 3 طلبات على طلبك الحالي',
                color: MyColors.mainColor,
              ),
            ),
            const Divider(
              height: 0,
              color: MyColors.mainColor,
              thickness: 2,
            ),
            SizedBox(height: 16.h),
            const OrdersViewer(),
            SizedBox(
              height: 1.h,
            ),
            const ButtonsForControlOrders(),
          ],
        ),
      ),
    );
  }
}
