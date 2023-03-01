import 'package:crypto_font_icons/crypto_font_icons.dart';
import 'package:flutter/material.dart';
import 'package:enefty_icons/enefty_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:crypto/crypto.dart';

//Widgets
import '../widgets/my_appbar.dart';
import '../widgets/balance_widget.dart';
import '../widgets/portfolio_list_widget.dart';

class PortfolioWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Porfolio',
                style: GoogleFonts.openSans(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
              Text(
                'View all',
                style: GoogleFonts.openSans(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        Container(
          height: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(horizontal: 10),
            children: [
              PortfolioListWidget(
                'Apple',
                Icons.apple_rounded,
                '422.23',
                '152.93',
                '+0.67%',
                Colors.green,
                0,
              ),
              PortfolioListWidget(
                'Bitcoin',
                CryptoFontIcons.BTC,
                '450.45',
                '2.450,45',
                '-1.3%',
                Colors.red,
                1,
              ),
              PortfolioListWidget(
                'Telegram',
                Icons.telegram,
                '342.40',
                '235.5',
                '+0.67%',
                Colors.green,
                2,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
