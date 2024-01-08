import 'package:flutter/material.dart';
import 'package:folioport/themes/themes.dart';
import 'package:folioport/viewmodels/json_data_viewmodel.dart';
import 'package:kartal/kartal.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class SendmeEmailWidget extends StatelessWidget {
  const SendmeEmailWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<JsonDataViewmodel>(builder: (context, notifier, child) {
      return Container(
        height: context.sized.dynamicHeight(0.4),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Theme.of(context).colorScheme.primary,
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: context.sized.dynamicWidth(0.35),
                child: Text(
                  "Interested working with me?",
                  style: AppTheme.getHeadlineMedium(context)
                      .copyWith(fontWeight: FontWeight.w600),
                ),
              ),
              ElevatedButton.icon(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(
                                  color:
                                      AppTheme.getBodySmall(context).color!)))),
                  onPressed: () async {
                    final Uri emailLaunchUri = Uri(
                      scheme: 'mailto',
                      path: notifier.jsonDataModel.email,
                      queryParameters: {'subject': 'Work with me', 'body': ''},
                    );

                    await launchUrl(emailLaunchUri);
                  },
                  icon: Icon(
                    Icons.email,
                    color: AppTheme.getBodySmall(context).color,
                  ),
                  label: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "Send me Email",
                      style: AppTheme.getBodySmall(context)
                          .copyWith(fontWeight: FontWeight.w500),
                    ),
                  ))
            ],
          ),
        ),
      );
    });
  }
}
