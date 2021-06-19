import 'package:flutter/material.dart';
import 'package:kosaku_nakano/views/widgets/portfolio_card.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ThesisPortfolioCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PortfolioCard(
        onTap: () => launch('https://www.slideshare.net/secret/wI77CjB50CIWI0'),
        imagePath: 'assets/Screen Shot 2021-06-16 at 23.18.11.png',
        title: AppLocalizations.of(context)!.graduationThesis,
        description: AppLocalizations.of(context)!.sotsuron);
  }
}
