import 'package:flutter/material.dart';
import 'package:kosaku_nakano/views/widgets/portfolio_card.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class BookPortfolioCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PortfolioCard(
      onTap: () => launch('https://book-portfolio-1e738.web.app/#/'),
      imagePath: 'assets/book_portfolio.png',
      title: AppLocalizations.of(context)!.bookPortfolio,
      description: AppLocalizations.of(context)!.description,
    );
  }
}
