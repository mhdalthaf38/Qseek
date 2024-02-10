import 'package:flutter/material.dart';
import 'package:mohammed_s_application1/core/app_export.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key})
      : super(
          key: key,
        );

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  @override
  void initState() {
    super.initState();
    navigateTohome();
  }

  navigateTohome() async {
    await Future.delayed(Duration(seconds: 5), () {});
    Navigator.pushReplacementNamed(context, '/login_screen');
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primary,
        body: SizedBox(
          width: double.maxFinite,
          child: CustomImageView(
            svgPath: ImageConstant.imgGroup162797,
            height: getVerticalSize(153),
            width: getHorizontalSize(102),
            alignment: Alignment.center,
            margin: getMargin(
              bottom: 5,
            ),
          ),
        ),
      ),
    );
  }
}
