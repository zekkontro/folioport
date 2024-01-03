import 'package:flutter/material.dart';
import 'package:folioport/themes/themes.dart';
import 'package:folioport/widgets/github_repo_widget.dart';
import 'package:kartal/kartal.dart';

class GithubReposView extends StatelessWidget {
  const GithubReposView({super.key});

  @override
  Widget build(BuildContext context) {
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
                  children: List<Widget>.generate(
                      6, (index) => const GithubRepoWidget()),
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
}
