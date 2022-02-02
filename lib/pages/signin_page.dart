import 'package:flutter/material.dart';
import 'package:testproject/helper/auth_helper.dart';
import 'package:get/get.dart';

class SigninPage extends GetWidget<AuthHelper> {
  const SigninPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController email = TextEditingController();
    TextEditingController pass = TextEditingController();

    return Material(
      child: SizedBox(
        child: Column(
          children: [
            TextFormField(
              controller: email,
            ),
            TextFormField(
              controller: pass,
            ),
            GestureDetector(
              onTap: () {
                controller.signup(email.text, pass.text);
              },
              child: const Text("Sigin"),
            )
          ],
        ),
      ),
    );
    ;
  }
}
