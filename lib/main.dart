import 'package:flutter/material.dart';

import 'package:mohammed_s_application1/presentation/splash_screen/splash_screen.dart';
import 'package:mohammed_s_application1/theme/theme_helper.dart';
import 'package:mohammed_s_application1/routes/app_routes.dart';

void main() async {
  ThemeHelper().changeTheme('primary');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      title: 'mohammed_s_application1',
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      routes: AppRoutes.routes,
    );
  }
}


// main