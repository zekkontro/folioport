import 'package:flutter/material.dart';
import 'package:folioport/themes/themes.dart';
import 'package:folioport/viewmodels/json_data_viewmodel.dart';
import 'package:folioport/widgets/github_repo_widget.dart';
import 'package:kartal/kartal.dart';
import 'package:provider/provider.dart';

class GithubReposView extends StatelessWidget {
  const GithubReposView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<JsonDataViewmodel>(
      builder: (context, notifier, child) {
        return Container(
          width: context.sized.width,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondary,
          ),
          child: SizedBox(
            width: context.sized.dynamicWidth(0.3),
            child: Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: context.sized.dynamicWidth(0.2)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: context.sized.dynamicHeight(0.1),
                  ),
                  Text(
                    "Github Repos",
                    style: AppTheme.getBodyMedium(context),
                  ),
                  SizedBox(
                    height: context.sized.dynamicHeight(0.1),
                  ),
                  SizedBox(
                    height: context.sized.dynamicHeight(1.3),
                    child: GridView.count(
                      mainAxisSpacing: 20,
                      crossAxisSpacing: 20,
                      physics: const NeverScrollableScrollPhysics(),
                      crossAxisCount: 2,
                      childAspectRatio: 16 / 12,
                      children: notifier.jsonDataModel.githubRepos.map<Widget>((repo) => GithubRepoWidget(model: repo,)).toList(),
                    ),
                  ),
                    SizedBox(
                      height: context.sized.dynamicHeight(0.08),
                    ),

                ],
              ),
            ),
          ),
        );
      }
    );
  }
}
