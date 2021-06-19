import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class GitHubButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        launch('https://github.com/kosaku47');
      },
      child: Image.asset(
        'assets/GitHub_Logo.png',
        height: 24,
      ),
    );
  }
}
