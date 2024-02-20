import 'package:flutter/material.dart';
import 'package:mohammed_s_application1/core/app_export.dart';
import 'package:mohammed_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:mohammed_s_application1/widgets/app_bar/appbar_image_1.dart';
import 'package:mohammed_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:mohammed_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:mohammed_s_application1/widgets/custom_checkbox_button.dart';
import 'package:mohammed_s_application1/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class ProfilePage extends StatelessWidget {
  ProfilePage({Key? key}) : super(key: key);

  bool opentowork = false;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
      backgroundColor: appTheme.whiteA70001,
      appBar: CustomAppBar(
          leadingWidth: getHorizontalSize(48),
          leading: AppbarImage(
              svgPath: ImageConstant.imgGroup162799,
              margin: getMargin(left: 24, top: 13, bottom: 13),
              onTap: () {
                onTapArrowbackone(context);
              }),
          centerTitle: true,
          title: AppbarTitle(text: "Upload")),
    ));
  }

  /// navigates back to the previous screen.

  onTapArrowbackone(BuildContext context) {
    Navigator.pop(context);
  }
}
