import "package:flutter/material.dart";
import "package:fl_chart/fl_chart.dart";
import 'package:google_fonts/google_fonts.dart';

class BarChartWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BarChart(
      BarChartData(
          barTouchData: BarTouchData(
            touchTooltipData: BarTouchTooltipData(
              tooltipBgColor: Color(0xff6648FF).withOpacity(.3),
              getTooltipItem: (group, groupIndex, rod, rodIndex) {
                String information;

                switch (groupIndex) {
                  case 0:
                    information = "+ 544";
                    break;

                  case 1:
                    information = "+233";
                    break;

                  case 2:
                    information = "+45,00";
                    break;

                  case 3:
                    information = "+560";
                    break;

                  case 4:
                    information = "+568";
                    break;

                  case 5:
                    information = "+568";
                    break;

                  case 6:
                    information = "+678";
                    break;
                }

                return BarTooltipItem(
                  information,
                  GoogleFonts.poppins(
                      fontSize: 15,
                      color: Color(0xff6648FF),
                      fontWeight: FontWeight.w500),
                );
              },
            ),
          ),
          titlesData: FlTitlesData(
            bottomTitles: SideTitles(
              showTitles: true,
              textStyle: GoogleFonts.poppins(
                color: Color(0xff9AA1A9),
              ),
              margin: 16,
              getTitles: (value) {
                switch (value.toInt()) {
                  case 0:
                    return "Sat";

                  case 1:
                    return "Sun";

                  case 2:
                    return "Mon";

                  case 3:
                    return "Tue";

                  case 4:
                    return "Wed";

                  case 5:
                    return "Thu";

                  case 6:
                    return "Fri";

                  default:
                    return "";
                }
              },
            ),
            leftTitles: SideTitles(showTitles: false),
          ),
          borderData: FlBorderData(show: false),
          barGroups: [
            BarChartGroupData(
              x: 0,
              barRods: [
                BarChartRodData(y: 10, width: 12, color: Color(0xff6648FF)),
              ],
            ),
            BarChartGroupData(
              x: 1,
              barRods: [
                BarChartRodData(y: 3, width: 12, color: Color(0xff6648FF)),
              ],
            ),
            BarChartGroupData(
              x: 3,
              barRods: [
                BarChartRodData(y: 5, width: 12, color: Color(0xff9CA6B5)),
              ],
            ),
            BarChartGroupData(
              x: 4,
              barRods: [
                BarChartRodData(y: 8, width: 12, color: Color(0xff9CA6B5)),
              ],
            ),
            BarChartGroupData(
              x: 4,
              barRods: [
                BarChartRodData(y: 6, width: 12, color: Color(0xff9CA6B5)),
              ],
            ),
            BarChartGroupData(
              x: 4,
              barRods: [
                BarChartRodData(y: 4, width: 12, color: Color(0xff6648FF)),
              ],
            ),
            BarChartGroupData(
              x: 4,
              barRods: [
                BarChartRodData(y: 2, width: 12, color: Color(0xff9CA6B5)),
              ],
            ),
          ]),
    );
  }
}
