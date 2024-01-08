import 'package:flutter/material.dart';
import 'package:folioport/gen/assets.gen.dart';
import 'package:folioport/themes/themes.dart';
import 'package:folioport/viewmodels/json_data_viewmodel.dart';
import 'package:folioport/widgets/social_media_row_widget.dart';
import 'package:provider/provider.dart';

class IntroductionPartView extends StatelessWidget {
  const IntroductionPartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<JsonDataViewmodel>(builder: (context, notifier, child) {
      return Row(
        children: [
          Container(
            width: 360,
            height: 480,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(Assets.images.developer.path))),
          ),
          const SizedBox(
            width: 60,
          ),
          SizedBox(
            width: 500,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hello I'm ${notifier.jsonDataModel.firstName} ${notifier.jsonDataModel.secondName}",
                  style: AppTheme.getBodySmall(context),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "I'm a ${notifier.jsonDataModel.role}",
                  style: AppTheme.getHeadlineMedium(context),
                  textAlign: TextAlign.start,
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 400,
                  child: Text(
                    notifier.jsonDataModel.introductionText,
                    style:
                        AppTheme.getBodySmall(context).copyWith(fontSize: 15),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const SocialMediaRowWidget()
              ],
            ),
          )
        ],
      );
    });
  }
}
