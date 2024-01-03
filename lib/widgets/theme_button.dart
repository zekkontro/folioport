import 'package:flutter/material.dart';
import 'package:folioport/enum/theme_key.dart';
import 'package:folioport/extension/string_extension.dart';
import 'package:folioport/gen/assets.gen.dart';
import 'package:folioport/themes/themes.dart';
import 'package:folioport/viewmodels/theme_viewmodel.dart';
import 'package:provider/provider.dart';

class ThemeButton extends StatelessWidget {
  const ThemeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeViewmodel>(builder: (context, notifier, value) {
      return InkWell(
        child: (notifier.themeValue == ThemeValue.light
                ? Assets.icons.moon
                : Assets.icons.sun)
            .toSvgAsset(color: AppTheme.getBodyMedium(context).color),
        onTap: () => notifier.changeTheme(),
      );
    });
  }
}
