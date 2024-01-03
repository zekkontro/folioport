import 'package:flutter/material.dart';
import 'package:folioport/viewmodels/json_data_viewmodel.dart';
import 'package:folioport/viewmodels/theme_viewmodel.dart';
import 'package:folioport/views/home_view.dart';
import 'package:provider/provider.dart';

void main() async {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (context) => ThemeViewmodel(),
      ),
      ChangeNotifierProvider(
        create: (context) => JsonDataViewmodel(),
      ),
    ],
    child: const MainApp(),
  ));
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  void initState() {
    Provider.of<ThemeViewmodel>(context, listen: false).initTheme();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeViewmodel>(builder: (context, notifier, child) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: notifier.theme,
        home: const HomeView(),
      );
    });
  }
}
