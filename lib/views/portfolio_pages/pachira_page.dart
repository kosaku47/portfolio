import 'package:flutter/material.dart';
import 'package:kosaku_nakano/views/widgets/my_spaces.dart';
import 'package:kosaku_nakano/views/widgets/responsive_grid.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:url_launcher/url_launcher.dart';

class PachiraPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppLocalizations.of(context)!.newsShareApp,
          style: const TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const ResponsiveGrid(
              width: 180,
              height: 390,
              horizontalInsets: 16,
              verticalInsets: 16,
              children: [
                ScreenShot('assets/IMG_8408.PNG'),
                ScreenShot('assets/IMG_8409.PNG'),
                ScreenShot('assets/IMG_8410.PNG'),
              ],
            ),
            VSpace.xl(),
            Text(
              AppLocalizations.of(context)!.mainFeatures,
              style: Theme.of(context).textTheme.subtitle1,
            ),
            VSpace.l(),
            Text(
              AppLocalizations.of(context)!.readingList,
              style: Theme.of(context).textTheme.bodyText2,
            ),
            Text(
              AppLocalizations.of(context)!.commentAndLike,
              style: Theme.of(context).textTheme.bodyText2,
            ),
            Text(
              AppLocalizations.of(context)!.followFriends,
              style: Theme.of(context).textTheme.bodyText2,
            ),
            Text(
              AppLocalizations.of(context)!.postToReadingList,
              style: Theme.of(context).textTheme.bodyText2,
            ),
            Text(
              AppLocalizations.of(context)!.searching,
              style: Theme.of(context).textTheme.bodyText2,
            ),
            Text(
              AppLocalizations.of(context)!.bookmark,
              style: Theme.of(context).textTheme.bodyText2,
            ),
            VSpace.xl(),
            TextButton(
              onPressed: () =>
                  launch('https://testflight.apple.com/join/Ao2sJeVs'),
              child: Text(AppLocalizations.of(context)!.testing),
            ),
          ],
        ),
      ),
    );
  }
}

class ScreenShot extends StatelessWidget {
  const ScreenShot(this.name);

  final String name;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      name,
      height: 390,
      width: 180,
      fit: BoxFit.contain,
    );
  }
}
