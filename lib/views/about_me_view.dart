import 'package:flutter/material.dart';
import 'package:folioport/themes/themes.dart';
import 'package:folioport/viewmodels/json_data_viewmodel.dart';
import 'package:folioport/widgets/send_me_email_widget.dart';
import 'package:folioport/widgets/skill_widget.dart';
import 'package:kartal/kartal.dart';
import 'package:provider/provider.dart';

class AboutMeView extends StatelessWidget {
  const AboutMeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<JsonDataViewmodel>(builder: (context, notifier, child) {
      return Container(
        width: context.sized.width,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
        ),
        child: SizedBox(
          width: context.sized.dynamicWidth(0.3),
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: context.sized.dynamicWidth(0.1)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: context.sized.dynamicHeight(0.2),
                ),
                SizedBox(
                  width: context.sized.dynamicWidth(0.4),
                  child: Text(
                    "About Me",
                    style: AppTheme.getBodyMedium(context)
                        .copyWith(fontWeight: FontWeight.w800),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: context.sized.dynamicWidth(0.3),
                      child: Text(
                        notifier.jsonDataModel.aboutMeText,
                        style: AppTheme.getBodySmall(context).copyWith(
                            fontWeight: FontWeight.w400, fontSize: 18),
                      ),
                    ),
                    SizedBox(width: context.sized.dynamicWidth(0.1)),
                    SizedBox(
                      width: context.sized.dynamicWidth(0.3),
                      height: context.sized.dynamicHeight(0.4),
                      child: GridView.count(
                        physics: const NeverScrollableScrollPhysics(),
                        childAspectRatio: 4 / 3,
                        crossAxisCount: 3,
                        children: notifier.jsonDataModel.skills
                            .map<Widget>((e) => SkillWidget(text: e))
                            .toList(),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: context.sized.dynamicHeight(0.08),
                ),
                const SendmeEmailWidget(),
                SizedBox(
                  height: context.sized.dynamicHeight(0.08),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
