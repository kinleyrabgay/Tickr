import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tickr/core/config/routes/route.dart';
import 'package:tickr/core/config/themes/theme.dart';

Future<void> main() async {
  if (GetPlatform.isAndroid) TAppTheme.setStatusBarStyle();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Tickr',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      darkTheme: TAppTheme.darkTheme,
      theme: TAppTheme.lightTheme,
      onGenerateRoute: onGenerateRoute,
    );
  }
}
