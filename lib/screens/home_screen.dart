import 'package:crypto_font_icons/crypto_font_icons.dart';
import 'package:flutter/material.dart';
import 'package:enefty_icons/enefty_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:crypto/crypto.dart';

//Widgets
import '../widgets/my_appbar.dart';
import '../widgets/balance_widget.dart';
import '../widgets/portfolio_widget.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.black12,
            Colors.deepPurple.shade900,
            Colors.black,
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 15),
              MyAppBar(),
              const SizedBox(height: 10),
              BalanceWidget(),
              PortfolioWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
