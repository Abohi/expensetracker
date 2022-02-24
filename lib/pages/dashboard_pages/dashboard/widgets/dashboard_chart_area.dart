import 'package:expensetracker/pages/dashboard_pages/dashboard/widgets/custom_date_selector.dart';
import 'package:expensetracker/pages/dashboard_pages/dashboard/widgets/dashboard_portfolio_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DashBoardChartArea extends HookWidget {
  const DashBoardChartArea();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: 419.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(7)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 25.h,),
          CustomDateSelector(),
          AspectRatio(
            aspectRatio: 5 / 5,
            child: SizedBox(
              height: 228.h,
              width: 228.h,
              child:PortfolioChart(
                portfolioData: [
                  20,60
                ],
              ),
            ),
          ),
          SizedBox(height: 24.h,),
          
        ],
      ),
    );
  }
}
