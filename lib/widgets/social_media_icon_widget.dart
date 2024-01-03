import 'package:flutter/material.dart';
import 'package:folioport/extension/string_extension.dart';
import 'package:folioport/themes/themes.dart';
import 'package:url_launcher/url_launcher_string.dart';

class SocialMediaIconWidget extends StatelessWidget {
  final String assetPath;
  final String link;
  const SocialMediaIconWidget(
      {super.key, required this.assetPath, required this.link});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        await launchUrlString(link);
      },
      child: assetPath.toSvgAsset(
          color: AppTheme.getBodySmall(context).color, width: 32, height: 32),
    );
  }
}
