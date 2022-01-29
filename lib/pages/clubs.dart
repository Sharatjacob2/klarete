import 'package:flutter/material.dart';
import 'package:klarete/pages/temporary.dart';

import 'basic_builder.dart';

class Clubs extends StatelessWidget {
  const Clubs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              const StarterDesign1(),
              NextButton("Club Profile", 'clubProfile'),
            ],
          ),
        ),
      ),
    );
  }
}
