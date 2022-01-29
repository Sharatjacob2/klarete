import 'package:flutter/material.dart';
import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:klarete/pages/special_widgets.dart';
import 'package:klarete/pages/basic_builder.dart';

class ChooseInterests extends StatefulWidget {
  const ChooseInterests({Key? key}) : super(key: key);

  @override
  _ChooseInterestsState createState() => _ChooseInterestsState();
}

class _ChooseInterestsState extends State<ChooseInterests> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SizedBox(
        height: 80,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            LongButton("COMPLETE!", 'homer', 1),
          ],
        ),
      ),
      backgroundColor: const Color(0xFFFAFAFA),
      body: ColorfulSafeArea(
        color: const Color(0xFF65468D),
        child: Column(
          children: <Widget>[
            const StarterDesign1(),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                margin: const EdgeInsets.only(left: 30.0),
                child: const Text(
                  "Select your interests:",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                margin: const EdgeInsets.only(left: 30.0, right: 30.0),
                child: Column(
                  children: <Widget>[
                    SelectBlock("PUBLIC SPEAKING"),
                    SelectBlock("WRITING"),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
