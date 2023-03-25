import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_challenge/widgets/button_for_increment_and_decrement.dart';
import 'package:task_challenge/widgets/my_row_for_icon_and_text.dart';
import 'package:task_challenge/widgets/order_code_widget.dart';
import 'package:task_challenge/widgets/text_utils.dart';

import '../core/utils/assets_data.dart';
import '../core/utils/my_colors.dart';

class ItemBuilderWidget extends StatelessWidget {
  const ItemBuilderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            SizedBox(
              height: 20.h,
            ),
            Container(
              height: 175.h,
              width: 165.w,
              decoration: BoxDecoration(
                color: MyColors.mainColor,
                borderRadius: BorderRadius.circular(10.sp),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 40.h,
                  ),
                  const MyRowForIconAndText(
                    icon: MyAssets.dateIcon,
                    text: '22-02-2021',
                  ),
                  const MyRowForIconAndText(
                    icon: MyAssets.mapIcon,
                    text: 'الكرامة',
                  ),
                  const MyRowForIconAndText(
                    icon: MyAssets.storeIcon,
                    text: 'جون دو',
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 10.h, 6.w, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: 23.h,
                          width: 52.w,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(38.sp),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(2.w),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ButtonForIncrementAndDecrement(
                                  icon: Icons.remove,
                                  onTap: () {},
                                ),
                                Text(
                                  '1',
                                  style: GoogleFonts.poppins(
                                      fontSize: 11.sp,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black),
                                ),
                                ButtonForIncrementAndDecrement(
                                  icon: Icons.add,
                                  onTap: () {},
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        TextUtils(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          text: 'عدد الطلبات',
                          color: Colors.white,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
        const OrderCodeWidget(orderCode: '2258'),
      ],
    );
  }
}
