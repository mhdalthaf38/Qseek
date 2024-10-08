# QSEEK A CROSS PLATFORM SERVICE PROVIDER APP 

####
Qseek is a lightweight, cross-platform mobile application built with Flutter that allows users to easily discover and connect with service providers. Whether you're looking for a job or seeking services, Qseek provides a streamlined experience, making it simple to find and manage opportunities on the go.
### Table of contents
- [System requirements](#system-requirements)


### System requirements

Dart SDK Version 2.18.0 or greater.
Flutter SDK Version 3.3.0 or greater.


### Check the UI of the entire app

Check the UI of all the app screens from a single place by setting up the 'initialRoute'  to AppNavigation in the AppRoutes.dart file.

### Application structure
After successful build, your application structure should look like this:
                    

.
├── android                         - It contains files required to run the application on an Android platform.
├── assets                          - It contains all images and fonts of your application.
├── ios                             - It contains files required to run the application on an iOS platform.
├── lib                             - Most important folder in the application, used to write most of the Dart code..
    ├── main.dart                   - Starting point of the application
    ├── core
    │   ├── app_export.dart         - It contains commonly used file imports
    │   ├── constants               - It contains static constant class file
    │   └── utils                   - It contains common files and utilities of the application
    ├── presentation                - It contains widgets of the screens
    ├── routes                      - It contains all the routes of the application
    └── theme                       - It contains app theme and decoration classes
    └── widgets                     - It contains all custom widget classes

### How to format your code?

- if your code is not formatted then run following command in your terminal to format code
  
  dart format .
  
