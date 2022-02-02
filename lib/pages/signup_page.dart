import 'package:flutter/material.dart';
import 'package:testproject/helper/auth_helper.dart';
import 'package:get/get.dart';

class SignUpPage extends GetWidget<AuthHelper> {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: GestureDetector(
          child: Text("SignUp"),
          onTap: () {
            controller.signInAsAnonymous();
          },
        ),
      ),
    );
  }
}
