import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeBottom extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const Divider(thickness: 1,),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 32),
            child: TextButton(
              onPressed: () => showLicensePage(context: context),
              child: Text(AppLocalizations.of(context)!.openSourceLibrary),
            ),
          ),
        ],
      ),
    );
  }
}
