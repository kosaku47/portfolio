import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:kosaku_nakano/views/github_button.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:kosaku_nakano/views/home_bottom.dart';
import 'package:kosaku_nakano/views/name_widget.dart';
import 'package:kosaku_nakano/views/portfolio_card/book_portfolio_card.dart';
import 'package:kosaku_nakano/views/portfolio_card/pachira_card.dart';
import 'package:kosaku_nakano/views/portfolio_card/sotsuron.dart';
import 'package:kosaku_nakano/views/widgets/my_spaces.dart';
import 'package:kosaku_nakano/views/widgets/portfolio_card.dart';
import 'package:kosaku_nakano/views/widgets/responsive_grid.dart';

class Home extends HookWidget {
  static const expandedDivider = Expanded(
    flex: 1,
    child: Divider(
      thickness: 1.5,
    ),
  );

  //print(Localizations.localeOf(context));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
        ),
        bottomSheet: HomeBottom(),
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                VSpace.xl(),
                Image.asset(
                  'assets/avataaars.png',
                  height: 200,
                  width: 200,
                ),
                VSpace.l(),
                NameWidget(),
                VSpace.l(),
                GitHubButton(),
                VSpace.xl(),
                Row(
                  children: [
                    expandedDivider,
                    HSpace.l(),
                    Text(AppLocalizations.of(context)!.someOfMyProjects),
                    HSpace.l(),
                    expandedDivider,
                  ],
                ),
                VSpace.xl(),
                ResponsiveGrid(
                  width: 300,
                  height: 245,
                  horizontalInsets: 24,
                  verticalInsets: 24,
                  children: [
                    BookPortfolioCard(),
                    PachiraCard(),
                    ThesisPortfolioCard(),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
