import 'package:assignment_5/src/language/language.dart';
import 'package:assignment_5/src/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return GetMaterialApp(
          theme: ThemeData(
            brightness: Brightness.dark,
          ),
          translations: Language(),
          locale: Locale("en", "US"),
          fallbackLocale: Locale("en", "US"),
          debugShowCheckedModeBanner: false,
          title: "Assignment 5",
          initialRoute: "/",
          routes: routes,
        );
      },
    );
  }
}
