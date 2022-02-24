import 'package:expensetracker/designs/app_colors.dart';
import 'package:expensetracker/designs/font_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomDateSelector extends HookWidget {
  const CustomDateSelector();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      height: 27.h,
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 26.0.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
              Expanded(
                child: SizedBox(
                  width: size.width,
                  height: 27.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("From",style: sofiaRegular(
                        fontColor: lightGrayColorText,
                        fontSize: 11.sp
                      ),),
                      SizedBox(width: 6.h,),
                      Expanded(child: DateItem(leadingIcon:Icon(Icons.keyboard_arrow_down_outlined,color: tabBarColorActive,size: 11.92,)  ,prefixIcon:Icon(Icons.date_range,color: tabBarColorActive,size: 11.92,), ))
                    ],
                  ),
                ),
              ),
            SizedBox(width: 17.w,),
            Expanded(
              child: SizedBox(
                width: size.width,
                height: 27.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("To",style: sofiaRegular(
                        fontColor: lightGrayColorText,
                        fontSize: 11.sp
                    ),),
                    SizedBox(width: 6.h,),
                    Expanded(child: DateItem(leadingIcon:Icon(Icons.keyboard_arrow_down_outlined,color: tabBarColorActive,size: 11.92,)  ,prefixIcon:Icon(Icons.date_range,color: tabBarColorActive,size: 11.92,), ))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class DateItem extends HookWidget {
  final Icon prefixIcon,leadingIcon;
  const DateItem({required this.leadingIcon,required this.prefixIcon});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 27.h,
      decoration: BoxDecoration(
          color: tabBarColorDisabled,
          borderRadius: BorderRadius.circular(15.r)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(width: 15.9.w,),
            prefixIcon,
          SizedBox(width: 8.9.w,),
          Text("20,Feb",style: sofiaRegular(
            fontColor: lightBlackColorText,
            fontSize: 11.sp
          ),),
          SizedBox(width: 7.9.w,),
          leadingIcon
        ],
      ),
    );
  }
}

