import 'package:expensetracker/designs/app_dimen.dart';
import 'package:expensetracker/pages/dashboard_pages/dashboard/widgets/custom_tabbar.dart';
import 'package:expensetracker/pages/dashboard_pages/dashboard/widgets/dashboard_chart_area.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../designs/app_colors.dart';

class DashBoardPage extends HookWidget {
  const DashBoardPage();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: Container(
          width: size.width,
          height: size.height,
          margin: EdgeInsets.symmetric(horizontal: horizontalSpace),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: SizedBox(height: 51.h,),
              ),
              SliverToBoxAdapter(
                child: CustomTabBar(),
              ),
              SliverToBoxAdapter(
                child: SizedBox(height: 18.h,),
              ),
              SliverToBoxAdapter(
                child: DashBoardChartArea(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
