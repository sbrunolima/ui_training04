import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:google_fonts/google_fonts.dart';

class WatchlistPortifolioWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            height: 270,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white12),
              borderRadius: BorderRadius.circular(20),
              gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.topRight,
                colors: [
                  Colors.black12,
                  Colors.white12,
                  Colors.white12,
                ],
              ),
            ),
            child: Column(
              children: [
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Portfolio Value',
                        style: GoogleFonts.openSans(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                      const Icon(
                        Icons.date_range_outlined,
                        size: 28,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 5),
                Container(
                  height: 200,
                  color: Colors.transparent,
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: LineChart(
                    LineChartData(
                      minX: 0,
                      maxX: 8,
                      minY: 0,
                      maxY: 3,
                      titlesData: FlTitlesData(
                        show: true,
                        rightTitles: AxisTitles(
                            sideTitles: SideTitles(showTitles: false)),
                        topTitles: AxisTitles(
                            sideTitles: SideTitles(showTitles: false)),
                        bottomTitles: AxisTitles(
                          sideTitles: SideTitles(
                            showTitles: true,
                            reservedSize: 40,
                            interval: 1.2,
                            getTitlesWidget: bottomTitleWidgets,
                          ),
                        ),
                        leftTitles: AxisTitles(
                            sideTitles: SideTitles(showTitles: false)),
                      ),
                      lineBarsData: [
                        LineChartBarData(
                          spots: const [
                            FlSpot(0, 1),
                            FlSpot(1, 1.7),
                            FlSpot(1.9, 1.8),
                            FlSpot(2.7, 1.9),
                            FlSpot(3.7, 0.8),
                            FlSpot(4.6, 1.3),
                            FlSpot(5.5, 1.4),
                            FlSpot(6, 0.3),
                            FlSpot(7, 0.7),
                            FlSpot(8, 0.5),
                          ],
                          isCurved: false,
                          color: Colors.purple,
                          belowBarData: BarAreaData(
                            show: true,
                            color: Colors.white10,
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Colors.purple.shade400,
                                Colors.transparent,
                              ],
                            ),
                          ),
                          dotData: FlDotData(
                            show: true,
                            getDotPainter: (spot, percent, barData, index) =>
                                FlDotCirclePainter(
                              radius: 3,
                              color: Colors.purple,
                              strokeWidth: 2,
                              strokeColor: Colors.transparent,
                            ),
                          ),
                        ),
                      ],
                      gridData: FlGridData(show: false),
                      borderData: FlBorderData(
                        show: false,
                        border: Border.all(color: Colors.white54),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 12,
      color: Colors.white24,
    );
    Widget text;
    switch (value.toInt()) {
      case 1:
        text = const Text('SUN', style: style);
        break;
      case 2:
        text = const Text('MON', style: style);
        break;
      case 3:
        text = const Text('TUE', style: style);
        break;
      case 4:
        text = const Text('WED', style: style);
        break;
      case 5:
        text = const Text('THU', style: style);
        break;
      case 6:
        text = const Text('FRI', style: style);
        break;
      case 7:
        text = const Text('SAT', style: style);
        break;
      default:
        text = const Text('', style: style);
        break;
    }

    return SideTitleWidget(
      axisSide: meta.axisSide,
      child: text,
    );
  }
}
