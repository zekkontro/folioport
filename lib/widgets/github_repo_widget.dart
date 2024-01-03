import 'package:flutter/material.dart';
import 'package:folioport/extension/string_extension.dart';
import 'package:folioport/gen/assets.gen.dart';
import 'package:folioport/themes/themes.dart';
import 'dart:math' as math;

import 'package:url_launcher/url_launcher_string.dart';

Color generateRandomColor() {
  return Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
      .withOpacity(1.0);
}

class GithubRepoWidget extends StatelessWidget {
  const GithubRepoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Widget buildGithubIcon() {
      return CircleAvatar(
          backgroundColor: generateRandomColor(),
          child: Center(
            child: Padding(
                padding: const EdgeInsets.all(10),
                child: Assets.icons.github.toSvgAsset(color: Colors.white)),
          ));
    }

    return GestureDetector(
      onTap: () async {
        await launchUrlString("https://github.com/zekkontro/berat_calculator");
      },
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,
            borderRadius: BorderRadius.circular(10)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            buildGithubIcon(),
            const SizedBox(
              height: 20,
            ),
            Text(
              "readsomo",
              style: AppTheme.getBodyMedium(context).copyWith(fontSize: 15),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis.",
              style:
                  AppTheme.getBodySmall(context).copyWith(fontSize: 15),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const CircleAvatar(
                  radius: 5,
                  backgroundColor: Colors.redAccent,
                ),
                const SizedBox(
                  width: 3,
                ),
                const Text(
                  "Flutter",
                  style: TextStyle(fontSize: 13),
                ),
                const SizedBox(
                  width: 8,
                ),
                Assets.icons.star.toSvgAsset(),
                const SizedBox(
                  width: 3,
                ),
                const Text("590", style: TextStyle(fontSize: 13)),
                const SizedBox(
                  width: 8,
                ),
                Assets.icons.fork.toSvgAsset(),
                const SizedBox(
                  width: 3,
                ),
                const Text("15k", style: TextStyle(fontSize: 13)),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
