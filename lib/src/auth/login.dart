import 'package:assignment_5/src/app/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../widget/button.dart';
import '../widget/textfield.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  GlobalKey<FormState> key = GlobalKey<FormState>();
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confrimPass = TextEditingController();

  void validation() {
    if (key.currentState!.validate()) {
      print("ok");
    } else {
      print("Error");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: AppColor.backgroundColor,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Form(
          key: key,
          child: Column(
            children: [
              SizedBox(
                height: 15.h,
              ),
              Center(
                child: Text(
                  "title".tr,
                  style: TextStyle(
                      fontFamily: "title",
                      fontWeight: FontWeight.bold,
                      fontSize: 25.sp),
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              CustonTextFormField(
                hintText: "Name",
                prefixIcon: CupertinoIcons.person,
                validator: (val) {
                  if (val.isEmpty) {
                    return "Name can't be Empty!";
                  } else {
                    return null;
                  }
                },
                controller: name,
              ),
              CustonTextFormField(
                hintText: "Email",
                prefixIcon: CupertinoIcons.mail,
                validator: (val) {
                  if (val.isEmpty) {
                    return "Email can't be Empty!";
                  } else {
                    return null;
                  }
                },
                controller: email,
              ),
              CustonTextFormField(
                hintText: "Password",
                prefixIcon: Icons.vpn_key,
                validator: (val) {
                  if (val.isEmpty) {
                    return "Password can't be Empty!";
                  } else if (val.length > 5) {
                    return "Password length must be 6 digit";
                  } else {
                    return null;
                  }
                },
                controller: password,
              ),
              CustonTextFormField(
                hintText: "Confirm Password",
                prefixIcon: Icons.vpn_key,
                validator: (val) {
                  if (val.isEmpty) {
                    return "Confirm Password can't be Empty!";
                  } else if (val.length > 5) {
                    return "Confirm Password length must be 6 digit";
                  } else {
                    return null;
                  }
                },
                controller: confrimPass,
              ),
              SizedBox(
                height: 2.h,
              ),
              CustomButton(
                onTap: () {
                  validation();
                },
                title: "Log In",
              ),
              SizedBox(
                height: 3.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: () {
                        Get.updateLocale(Locale("bn", "BD"));
                      },
                      child: Text("Bangla")),
                  TextButton(
                      onPressed: () {
                        Get.updateLocale(Locale("en", "US"));
                      },
                      child: Text("English"))
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}
