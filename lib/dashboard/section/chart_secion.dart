import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../app_color.dart';

class ChartSecion extends StatefulWidget {
  ChartSecion({super.key});

  final Color barBackgroundColor = AppColor.backgroundColor;
  final Color barColor = AppColor.mainColor;
  final Color touchedBarColor = AppColor.mainColor.withOpacity(0.4);

  @override
  State<StatefulWidget> createState() => BarChartSample1State();
}

class BarChartSample1State extends State<ChartSecion> {
  final Duration animDuration = const Duration(milliseconds: 250);

  int touchedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColor.backgroundColor2,
      borderRadius: BorderRadius.circular(20),
      elevation: 1,
      child: Container(
        width: 948.w,
        height: 585.h,
        padding: EdgeInsets.symmetric(horizontal: 44.w, vertical: 35.h),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Total Revenue",
                          style: TextStyle(
                              fontSize: 24.sp,
                              fontWeight: FontWeight.w500,
                              color: AppColor.fontColor3),
                        ),
                      ],
                    ),
                    Text(
                      "980,273.00 SAR",
                      style: TextStyle(
                          fontSize: 36.sp,
                          fontWeight: FontWeight.w500,
                          color: AppColor.fontColor4),
                    ),
                  ],
                ),
                SizedBox(
                  // width: 91.w,*
                  width: 120.w,
                  height: 50.h,
                  child: Material(
                    borderRadius: BorderRadius.circular(15.r),
                    color: AppColor.mainColor.withOpacity(0.18),
                    child: DropdownButton(
                      padding: EdgeInsets.only(left: 10.w),
                      dropdownColor: AppColor.backgroundColor2,
                      elevation: 2,
                      iconEnabledColor: AppColor.mainColor,
                      value: 2,
                      underline: const SizedBox(),
                      borderRadius: BorderRadius.circular(27.r)
                          .copyWith(topRight: const Radius.circular(0)),
                      items: [
                        DropdownMenuItem(
                          value: 1,
                          child: Text(
                            "THIS YEAR",
                            style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                                color: AppColor.mainColor),
                          ),
                        ),
                        DropdownMenuItem(
                          value: 2,
                          child: Text(
                            "LAST YEAR",
                            style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                                color: AppColor.mainColor),
                          ),
                        ),
                      ],
                      onChanged: (value) {},
                    ),
                  ),
                ),
                // const Spacer(),

                /// DropdownButton
                SizedBox(
                  width: 241.w,
                  height: 55.h,
                  child: Material(
                    borderRadius: BorderRadius.circular(15.r),
                    color: AppColor.backgroundColor3,
                    child: DropdownButton(
                      isExpanded: true,
                      padding: EdgeInsets.symmetric(horizontal: 10.w),
                      dropdownColor: AppColor.backgroundColor2,
                      elevation: 2,
                      value: 1,
                      iconSize: 24.w,
                      underline: const SizedBox(),
                      borderRadius: BorderRadius.circular(10.r),
                      items: [
                        DropdownMenuItem(
                          value: 1,
                          child: Text(
                            "All Branches",
                            style: TextStyle(
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w400,
                                color: AppColor.fontColor2),
                          ),
                        ),
                        DropdownMenuItem(
                          value: 2,
                          child: Text(
                            "Branches 1",
                            style: TextStyle(
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w400,
                                color: AppColor.fontColor2),
                          ),
                        ),
                        DropdownMenuItem(
                          value: 2,
                          child: Text(
                            "Branches 2",
                            style: TextStyle(
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w400,
                                color: AppColor.fontColor2),
                          ),
                        ),
                      ],
                      onChanged: (value) {},
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.h),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.w),
                child: BarChart(
                  mainBarData(),
                  swapAnimationDuration: animDuration,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  BarChartGroupData makeGroupData(
    int x,
    double y, {
    bool isTouched = false,
    Color? barColor,
    double width = 22,
    List<int> showTooltips = const [],
  }) {
    barColor ??= widget.barColor;
    return BarChartGroupData(
      x: x,
      barRods: [
        BarChartRodData(
          toY: isTouched ? y + 1 : y,
          color: isTouched ? widget.touchedBarColor : barColor,
          width: width,
          borderSide: isTouched
              ? BorderSide(color: widget.touchedBarColor)
              : const BorderSide(color: Colors.white, width: 0),
          backDrawRodData: BackgroundBarChartRodData(
            show: true,
            toY: 20,
            color: widget.barBackgroundColor,
          ),
        ),
      ],
      showingTooltipIndicators: showTooltips,
    );
  }

  List<BarChartGroupData> showingGroups() => List.generate(12, (i) {
        switch (i) {
          case 0:
            return makeGroupData(0, 5, isTouched: i == touchedIndex);
          case 1:
            return makeGroupData(1, 6.5, isTouched: i == touchedIndex);
          case 2:
            return makeGroupData(2, 5, isTouched: i == touchedIndex);
          case 3:
            return makeGroupData(3, 7.5, isTouched: i == touchedIndex);
          case 4:
            return makeGroupData(4, 9, isTouched: i == touchedIndex);
          case 5:
            return makeGroupData(5, 11.5, isTouched: i == touchedIndex);
          case 6:
            return makeGroupData(6, 6.5, isTouched: i == touchedIndex);
          case 7:
            return makeGroupData(7, 15.5, isTouched: i == touchedIndex);
          case 8:
            return makeGroupData(8, 9.3, isTouched: i == touchedIndex);
          case 9:
            return makeGroupData(9, 16.0, isTouched: i == touchedIndex);
          case 10:
            return makeGroupData(10, 9.1, isTouched: i == touchedIndex);
          case 11:
            return makeGroupData(11, 6.5, isTouched: i == touchedIndex);
          case 12:
            return makeGroupData(12, 13.9, isTouched: i == touchedIndex);
          default:
            return throw Error();
        }
      });

  BarChartData mainBarData() {
    return BarChartData(
      barTouchData: BarTouchData(
        touchTooltipData: BarTouchTooltipData(
          tooltipBgColor: AppColor.mainColor,
          tooltipHorizontalAlignment: FLHorizontalAlignment.right,
          tooltipMargin: -10,
          getTooltipItem: (group, groupIndex, rod, rodIndex) {
            String months;
            switch (group.x) {
              case 0:
                months = 'Jan';
                break;
              case 1:
                months = 'Feb';
                break;
              case 2:
                months = 'Mar';
                break;
              case 3:
                months = 'Apr';
                break;
              case 4:
                months = 'May';
                break;
              case 5:
                months = 'Jun';
                break;
              case 6:
                months = 'Jul';
                break;
              case 7:
                months = 'Aug';
                break;
              case 8:
                months = 'Sep';
                break;
              case 9:
                months = 'Oct';
                break;
              case 10:
                months = 'Nov';
                break;
              case 11:
                months = 'Dec';
                break;

              default:
                throw Error();
            }
            return BarTooltipItem(
              '$months\n',
              TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18.sp,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: (rod.toY - 1).toString(),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            );
          },
        ),
        touchCallback: (FlTouchEvent event, barTouchResponse) {
          setState(() {
            if (!event.isInterestedForInteractions ||
                barTouchResponse == null ||
                barTouchResponse.spot == null) {
              touchedIndex = -1;
              return;
            }
            touchedIndex = barTouchResponse.spot!.touchedBarGroupIndex;
          });
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        rightTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            getTitlesWidget: getTitles,
            reservedSize: 38,
          ),
        ),
        leftTitles: const AxisTitles(
          sideTitles: SideTitles(
            showTitles: false,
          ),
        ),
      ),
      borderData: FlBorderData(
        show: false,
      ),
      barGroups: showingGroups(),
      gridData: const FlGridData(show: false),
    );
  }

  Widget getTitles(double value, TitleMeta meta) {
    final style = TextStyle(
      color: AppColor.fontColor3,
      fontWeight: FontWeight.w500,
      fontSize: 20.sp,
    );
    Widget text;
    switch (value.toInt()) {
      case 0:
        text = Text('Jan', style: style);
        break;
      case 1:
        text = Text('Feb', style: style);
        break;
      case 2:
        text = Text('Mar', style: style);
        break;
      case 3:
        text = Text('Apr', style: style);
        break;
      case 4:
        text = Text('May', style: style);
        break;
      case 5:
        text = Text('Jun', style: style);
        break;
      case 6:
        text = Text('Jul', style: style);
        break;
      case 7:
        text = Text('Aug', style: style);
        break;
      case 8:
        text = Text('Sep', style: style);
        break;
      case 9:
        text = Text('Oct', style: style);
        break;
      case 10:
        text = Text('Nov', style: style);
        break;
      case 11:
        text = Text('Dec', style: style);
        break;
      default:
        text = Text('', style: style);
        break;
    }
    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 16,
      child: text,
    );
  }

  ///
}
