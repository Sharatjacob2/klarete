import 'package:flutter/material.dart';
import 'package:klarete/pages/temporary.dart';

import 'basic_builder.dart';

class ClubProfile extends StatelessWidget {
  const ClubProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              const StarterDesign1(),
              NextButton("Home", 'homer'),
            ],
          ),
        ),
      ),
    );
  }
}
