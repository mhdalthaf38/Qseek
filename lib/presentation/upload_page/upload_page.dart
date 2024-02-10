import 'package:flutter/material.dart';
import 'package:mohammed_s_application1/core/app_export.dart';
import 'package:mohammed_s_application1/services/firestore.dart';
import 'package:mohammed_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:mohammed_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:mohammed_s_application1/widgets/app_bar/custom_app_bar.dart';

class PlaceholderDialog extends StatelessWidget {
  const PlaceholderDialog({
    this.icon,
    this.title,
    this.message,
    this.actions = const [],
    Key? key,
  }) : super(key: key);

  final Widget? icon;
  final String? title;
  final String? message;
  final List<Widget> actions;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      icon: icon,
      title: title == null
          ? null
          : Text(
              title!,
              textAlign: TextAlign.center,
            ),
      titleTextStyle: TextStyle(color: Colors.black87),
      content: message == null
          ? null
          : Text(
              message!,
              textAlign: TextAlign.center,
            ),
      contentTextStyle: TextStyle(color: Color.fromARGB(255, 252, 0, 0)),
      actionsAlignment: MainAxisAlignment.center,
      actionsOverflowButtonSpacing: 8.0,
      actions: actions,
    );
  }
}

class UploadPage extends StatefulWidget {
  const UploadPage({Key? key}) : super(key: key);

  @override
  State<UploadPage> createState() => _UploadPageState();
}

class _UploadPageState extends State<UploadPage> {
  final FirestoreService firestoreService = FirestoreService();
  final namecontroller = TextEditingController();
  final jobtypecontroller = TextEditingController();
  final salarycontroller = TextEditingController();
  final numbercontroller = TextEditingController();
  final jobdiscriptioncontroller = TextEditingController();
  bool _validate = true;
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
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: namecontroller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text("name"),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: jobtypecontroller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text("job type"),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: salarycontroller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text("salary"),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: numbercontroller,
                  keyboardType: TextInputType.number,
                  maxLength: 10,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text("phone number"),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: jobdiscriptioncontroller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text("job description"),
                  ),
                ),
              ),

              //botton to save

              Padding(
                padding: const EdgeInsets.all(15),
                child: SizedBox(
                  width: 200,
                  height: 50,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            Color.fromARGB(243, 6, 26, 80))),
                    onPressed: () {
                      if (namecontroller.text == "") {
                        _validate = false;
                      } else if (jobtypecontroller.text == "") {
                        _validate = false;
                      } else if (salarycontroller.text == "") {
                        _validate = false;
                      } else if (numbercontroller.text == "") {
                        _validate = false;
                      } else if (jobdiscriptioncontroller.text == "") {
                        _validate = false;
                      } else {
                        _validate = true;
                      }
                      if (_validate == false) {
                        showDialog(
                          context: context,
                          builder: (ctx) => PlaceholderDialog(
                            icon: Icon(
                              Icons.error_outline,
                              color: Colors.teal,
                              size: 80.0,
                            ),
                            title: 'submit Failed',
                            message: 'you must need to enter the details',
                            actions: [
                              TextButton(
                                onPressed: () => Navigator.of(ctx).pop(),
                                child: Text('!Got It'),
                              ),
                            ],
                          ),
                        );
                      } else {
                        //add data to firebase
                        firestoreService.addData(
                            namecontroller.text,
                            jobtypecontroller.text,
                            salarycontroller.text,
                            numbercontroller.hashCode,
                            jobdiscriptioncontroller.text);

                        // clear the text controller

                        namecontroller.clear();
                        jobtypecontroller.clear();
                        salarycontroller.clear();
                        numbercontroller.clear();
                        jobdiscriptioncontroller.clear();

                        // clear the page

                        Navigator.pop(context);
                      }
                    },
                    child: Text(
                      "Submit",
                      style: TextStyle(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          fontSize: 15,
                          fontWeight: FontWeight.w800),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowbackone(BuildContext context) {
    Navigator.pop(context);
  }
}
