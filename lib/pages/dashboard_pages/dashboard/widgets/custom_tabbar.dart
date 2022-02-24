import 'package:expensetracker/designs/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../designs/font_styles.dart';
import '../../../../providers/state_providers/tabbar_toggle_provider.dart';

class CustomTabBar extends HookWidget{
  const CustomTabBar();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final ValueNotifier<bool>isOverView=useState<bool>(true);
    final ValueNotifier<bool>  isCategory=useState<bool>(false);
    final ValueNotifier<bool>isBudget=useState<bool>(false);
    var isOverViewState = useProvider(isOverViewTabProvider);
    var isCategoryState = useProvider(isCategoryTabProvider);
    var isBudgetState = useProvider(isBudgetTabProvider);
    return Container(
      width: size.width,
      height: 26.h,
      padding: EdgeInsets.symmetric(horizontal: 2.w),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.97.r),
          color: const Color(0xff767680).withOpacity(0.12)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: TabItem(tabLabel: 'OverView', isTabClicked: isOverView, onTabClicked: (){
              isOverView.value=true;
              isCategory.value=false;
              isBudget.value=false;
              isOverViewState.state=true;
              isCategoryState.state=false;
              isBudgetState.state=false;
            }),
          ),
          Expanded(
            child: TabItem(tabLabel: 'Category', isTabClicked: isCategory, onTabClicked: (){
              isOverView.value=false;
              isCategory.value=true;
              isBudget.value=false;
              isOverViewState.state=false;
              isCategoryState.state=true;
              isBudgetState.state=false;
            }),
          ),
          Expanded(
            child: TabItem(tabLabel: 'Budget', isTabClicked: isBudget, onTabClicked: (){
              isOverView.value=false;
              isCategory.value=false;
              isBudget.value=true;
              isOverViewState.state=false;
              isCategoryState.state=false;
              isBudgetState.state=true;
            }),
          ),
        ],
      ),
    );
  }
}
class TabItem extends StatelessWidget {
  final String tabLabel;
  final ValueNotifier<bool>isTabClicked;
  final Function onTabClicked;
  const TabItem({required this.tabLabel,required this.isTabClicked,required this.onTabClicked});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: (){
        onTabClicked();
      },
      child: Container(
        width: size.width,
        height: 26.h,
        decoration: BoxDecoration(
          color: isTabClicked.value?tabBarColorActive:tabBarColorDisabled,
          borderRadius: BorderRadius.circular(3.r),

        ),
        child: Center(
          child: Text(tabLabel,style: sofiaRegular(fontWeight: FontWeight.w500,fontSize: 11,fontColor: isTabClicked.value?Colors.white:lightBlueColor),),
        ),
      )
    );
  }
}