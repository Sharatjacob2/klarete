import 'package:flutter/material.dart';
import 'package:klarete/pages/temporary.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NextButton("User Profile", 'home');
  }
}
