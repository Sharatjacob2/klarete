import 'package:flutter/material.dart';
import 'package:klarete/pages/temporary.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NextButton("Sign In", 'signUp');
  }
}
