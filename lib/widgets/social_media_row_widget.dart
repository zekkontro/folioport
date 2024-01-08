import 'package:flutter/material.dart';
import 'package:folioport/extension/string_extension.dart';
import 'package:folioport/gen/assets.gen.dart';
import 'package:folioport/viewmodels/json_data_viewmodel.dart';
import 'package:folioport/widgets/social_media_icon_widget.dart';
import 'package:provider/provider.dart';

class SocialMediaRowWidget extends StatelessWidget {
  const SocialMediaRowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<JsonDataViewmodel>(builder: (context, notifier, child) {
      return Row(
        children: [
          notifier.socialProfile.instagram.isNullOrEmpty()
              ? Container()
              : SocialMediaIconWidget(
                  assetPath: Assets.icons.instagram,
                  link: notifier.socialProfile.instagram!,
                ),
          const SizedBox(
            width: 20,
          ),
          notifier.socialProfile.linkedin.isNullOrEmpty()
              ? Container()
              : SocialMediaIconWidget(
                  assetPath: Assets.icons.linkedin,
                  link: notifier.socialProfile.linkedin!),
          const SizedBox(
            width: 20,
          ),
          notifier.socialProfile.github.isNullOrEmpty()
              ? Container()
              : SocialMediaIconWidget(
                  assetPath: Assets.icons.github,
                  link: notifier.socialProfile.github!),
          const SizedBox(
            width: 20,
          ),
          notifier.socialProfile.dribble.isNullOrEmpty()
              ? Container()
              : SocialMediaIconWidget(
                  assetPath: Assets.icons.dribble,
                  link: notifier.socialProfile.dribble!),
        ],
      );
    });
  }
}
