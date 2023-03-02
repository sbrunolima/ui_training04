import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fl_chart/fl_chart.dart';

class PortfolioListWidget extends StatelessWidget {
  final String title;
  final IconData icon;
  final String valor;
  final String subtitle;
  final String percent;
  final Color color;
  final int chartOption;

  PortfolioListWidget(
    this.title,
    this.icon,
    this.valor,
    this.subtitle,
    this.percent,
    this.color,
    this.chartOption,
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            height: 175,
            width: 140,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white12),
              borderRadius: BorderRadius.circular(26),
              color: Colors.transparent,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 17),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title,
                      style: GoogleFonts.openSans(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                    Icon(
                      icon,
                      color: Colors.white,
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                Text(
                  valor,
                  style: GoogleFonts.openSans(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
                Column(
                  children: [
                    Container(
                      height: 40,
                      width: 120,
                      color: Colors.transparent,
                      child: LineChart(
                        LineChartData(
                          minX: 0,
                          maxX: 4.5,
                          minY: 0,
                          maxY: 3.5,
                          titlesData: FlTitlesData(
                            show: true,
                            rightTitles: AxisTitles(
                                sideTitles: SideTitles(showTitles: false)),
                            topTitles: AxisTitles(
                                sideTitles: SideTitles(showTitles: false)),
                            bottomTitles: AxisTitles(
                                sideTitles: SideTitles(showTitles: false)),
                            leftTitles: AxisTitles(
                                sideTitles: SideTitles(showTitles: false)),
                          ),
                          lineBarsData: [
                            if (chartOption == 0) optionZero(),
                            if (chartOption == 1) optionOne(),
                            if (chartOption == 2) optionTwo(),
                          ],
                          gridData: FlGridData(show: false),
                          borderData: FlBorderData(show: false),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      subtitle,
                      style: GoogleFonts.openSans(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      percent,
                      style: GoogleFonts.openSans(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: color,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  LineChartBarData optionZero() {
    return LineChartBarData(
      spots: const [
        FlSpot(0, 1),
        FlSpot(0.6, 1.4),
        FlSpot(0.9, 1),
        FlSpot(1.2, 1.5),
        FlSpot(1.4, 1.1),
        FlSpot(1.5, 1.6),
        FlSpot(1.8, 1.7),
        FlSpot(2.1, 1.4),
        FlSpot(2.6, 1.4),
        FlSpot(3, 2.7),
        FlSpot(3.1, 2.3),
        FlSpot(3.5, 2),
        FlSpot(3.5, 2),
        FlSpot(3.7, 2),
        FlSpot(4.1, 3),
        FlSpot(4.3, 2),
        FlSpot(4.5, 2.5),
      ],
      isCurved: true,
      color: Colors.green,
      dotData: FlDotData(show: false),
      belowBarData: BarAreaData(
        show: true,
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.green.shade500,
            Colors.black12,
          ],
        ),
      ),
    );
  }

  LineChartBarData optionOne() {
    return LineChartBarData(
      spots: const [
        FlSpot(0, 1),
        FlSpot(0.6, 1.4),
        FlSpot(0.9, 1),
        FlSpot(1.2, 1.5),
        FlSpot(1.4, 1.1),
        FlSpot(1.5, 1.6),
        FlSpot(1.8, 1.7),
        FlSpot(2.1, 1.4),
        FlSpot(2.6, 1.4),
        FlSpot(3, 2),
        FlSpot(3.1, 1.8),
        FlSpot(3.5, 1.5),
        FlSpot(3.5, 1.5),
        FlSpot(3.7, 1.2),
        FlSpot(4.1, 1),
        FlSpot(4.3, 1),
        FlSpot(4.5, 0.8),
      ],
      isCurved: true,
      color: Colors.purple,
      dotData: FlDotData(show: false),
      belowBarData: BarAreaData(
        show: true,
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.purple.shade500,
            Colors.black12,
          ],
        ),
      ),
    );
  }

  LineChartBarData optionTwo() {
    return LineChartBarData(
      spots: const [
        FlSpot(0, 1),
        FlSpot(0.6, 1.4),
        FlSpot(0.9, 1),
        FlSpot(1.2, 1.5),
        FlSpot(1.4, 1.1),
        FlSpot(1.5, 1.6),
        FlSpot(1.8, 1.7),
        FlSpot(2.1, 1.4),
        FlSpot(2.6, 1.4),
        FlSpot(3, 2.7),
        FlSpot(3.1, 2.3),
        FlSpot(3.5, 2),
        FlSpot(3.5, 2),
        FlSpot(3.7, 2),
        FlSpot(4.1, 3),
        FlSpot(4.3, 2),
        FlSpot(4.5, 2.5),
      ],
      isCurved: true,
      color: Colors.green,
      dotData: FlDotData(show: false),
      belowBarData: BarAreaData(
        show: true,
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.green.shade500,
            Colors.black12,
          ],
        ),
      ),
    );
  }
}
