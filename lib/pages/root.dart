import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testproject/helper/auth_helper.dart';
import 'package:testproject/pages/home_page.dart';
import 'package:testproject/pages/signin_page.dart';
import 'package:testproject/pages/signup_page.dart';

class Root extends StatelessWidget {
  const Root({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return (Get.find<AuthHelper>().user != null
          ? const HomePage()
          : const SigninPage());
    });
  }
}
