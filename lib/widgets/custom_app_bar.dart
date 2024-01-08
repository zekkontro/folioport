import 'package:flutter/material.dart';
import 'package:folioport/extension/string_extension.dart';
import 'package:folioport/gen/assets.gen.dart';
import 'package:folioport/themes/themes.dart';
import 'package:folioport/viewmodels/json_data_viewmodel.dart';
import 'package:folioport/widgets/section_tile.dart';
import 'package:folioport/widgets/theme_button.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kartal/kartal.dart';
import 'package:provider/provider.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<JsonDataViewmodel>(
      builder: (context, notifier, child) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Assets.icons.logo.toSvgAsset(
                    color: AppTheme.getBodyMedium(context).color),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Text.rich(TextSpan(children: [
                    TextSpan(
                        text: notifier.jsonDataModel.firstName,
                        style: GoogleFonts.montserratAlternates(
                          color: AppTheme.getBodyMedium(context).color,
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        )),
                    TextSpan(
                        text: notifier.jsonDataModel.secondName,
                        style: GoogleFonts.montserratAlternates(
                          color: AppTheme.getBodyMedium(context).color,
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ))
                  ])),
                ),
              ],
            ),
            SizedBox(
              width: context.sized.dynamicWidth(0.4),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SectionTile(text: "Repos", onTap: () {}),
                  SectionTile(text: "Blogs", onTap: () {}),
                  SectionTile(text: "Skills", onTap: () {}),
                  SectionTile(text: "Contact", onTap: () {}),
                  const ThemeButton()
                ],
              ),
            )
          ],
        );
      }
    );
  }
}
