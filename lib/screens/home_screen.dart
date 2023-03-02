import 'package:flutter/material.dart';
import 'package:enefty_icons/enefty_icons.dart';

//Widgets
import '../widgets_home/balance_widget.dart';
import '../widgets_home/portfolio_widget.dart';
import '../widgets_home/watchlist_widget.dart';
import '../widgets_home/watchlist_portfolio_value_widget.dart';

class HomeScreen extends StatelessWidget {
  static const routName = '/home-screen';
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.black12,
            Color.fromARGB(255, 53, 18, 94),
            Colors.black,
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Container(
              height: 40,
              width: 40,
              child: Image.asset('assets/profile.jpg',
                  scale: 5, fit: BoxFit.cover),
            ),
          ),
          actions: const [
            Icon(
              EneftyIcons.menu_2_outline,
              size: 30,
              color: Colors.white,
            ),
            SizedBox(width: 20),
          ],
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 30),
                BalanceWidget(),
                PortfolioWidget(),
                const SizedBox(height: 30),
                WatchlistWidget(),
                const SizedBox(height: 30),
                WatchlistPortifolioWidget(),
                const SizedBox(height: 50),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
