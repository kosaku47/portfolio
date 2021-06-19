import 'package:flutter/material.dart';
import 'package:kosaku_nakano/views/portfolio_pages/pachira_page.dart';
import 'package:kosaku_nakano/views/widgets/portfolio_card.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class PachiraCard extends StatelessWidget {
  // https://testflight.apple.com/join/Ao2sJeVs
  @override
  Widget build(BuildContext context) {
    return PortfolioCard(
        onTap: () => Navigator.of(context).push<Widget>(
          PageRouteBuilder(
            pageBuilder: (context, animation1, animation2) => PachiraPage(),
            transitionDuration: Duration(seconds: 0),
          ),
        ),
        imagePath: 'assets/JPEGイメージ-0CFE27B4B1D0-1.jpeg',
        title: AppLocalizations.of(context)!.newsShareApp,
        description: AppLocalizations.of(context)!.pachira);
  }
}
