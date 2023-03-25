import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_challenge/widgets/item_builder_widget.dart';

class OrdersViewer extends StatelessWidget {
  const OrdersViewer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: SizedBox(
        height: 520.h,
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 195.h,
              mainAxisSpacing: 16.w,
              crossAxisCount: 2,
              crossAxisSpacing: 16.h),
          itemBuilder: (context, index) {
            return const ItemBuilderWidget();
          },
        ),
      ),
    );
  }
}
