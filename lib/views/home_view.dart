import 'package:flutter/material.dart';
import 'package:folioport/extension/string_extension.dart';
import 'package:folioport/gen/assets.gen.dart';
import 'package:folioport/themes/themes.dart';
import 'package:folioport/viewmodels/json_data_viewmodel.dart';
import 'package:folioport/views/about_me_view.dart';
import 'package:folioport/views/github_repos_view.dart';
import 'package:folioport/views/introduction_part_view.dart';
import 'package:folioport/views/blogs_view.dart';
import 'package:folioport/widgets/custom_app_bar.dart';
import 'package:kartal/kartal.dart';
import 'package:provider/provider.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    Provider.of<JsonDataViewmodel>(context, listen: false).initialize();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: Future.delayed(const Duration(seconds: 4)),
          builder: (context, snapshot) {
            return snapshot.connectionState == ConnectionState.waiting
                ? Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Column(children: [
                          Assets.icons.logo.toSvgAsset(width: 100, height: 100),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            "folioport",
                            style: AppTheme.getBodyMedium(
                              context,
                            ).copyWith(
                                fontWeight: FontWeight.w500, fontSize: 36),
                          ),
                        ]),
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 12),
                          child: Text(
                            "The script developped by Berat Kurt",
                            style: AppTheme.getBodySmall(context)
                                .copyWith(fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                  )
                : SingleChildScrollView(
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: context.sized.dynamicWidth(0.1),
                              vertical: context.sized.dynamicHeight(0.1)),
                          child: Column(
                            children: [
                              const CustomAppBar(),
                              SizedBox(
                                height: context.sized.dynamicHeight(0.15),
                              ),
                              const IntroductionPartView(),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: context.sized.dynamicHeight(0.15),
                        ),
                        const GithubReposView(),
                        SizedBox(
                          height: context.sized.dynamicHeight(0.10),
                        ),
                        const BlogsView(),
                        SizedBox(
                          height: context.sized.dynamicHeight(0.10),
                        ),
                        const AboutMeView()
                      ],
                    ),
                  );
          }),
    );
  }
}
