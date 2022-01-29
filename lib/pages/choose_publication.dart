import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/material.dart';
import 'package:klarete/pages/special_widgets.dart';
import 'basic_builder.dart';
import 'choose_clubs.dart';

class ChoosePub extends StatelessWidget {
  const ChoosePub({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SizedBox(
        height: 80,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            LongButton("INTERESTS", 'chooseInterests', 1),
            LongButton("SKIP ALL", 'homer', 2),
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
                margin: const EdgeInsets.only(left: 40.0),
                child: const Text(
                  "Select your publications:",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 25),
              child: Column(
                children: [
                  Row(
                    children: const [
                      ClubSelect(),
                      ClubSelect(),
                      ClubSelect(),
                    ],
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                margin: const EdgeInsets.only(left: 40.0, top: 30, bottom: 15),
                child: const Text(
                  "Select your professional body:",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                  ),
                ),
              ),
            ),
            Professional("THE TRAINING CELL"),
            Professional("THE PLACEMENT CELL"),
          ],
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class Professional extends StatefulWidget {
  late String g;
  Professional(
    String s, {
    Key? key,
  }) : super(key: key) {
    g = s;
  }
  @override
  State<Professional> createState() => _ProfessionalState();
}

class _ProfessionalState extends State<Professional> {
  bool press = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15.0),
      width: 300,
      height: 60,
      child: TextButton(
        onPressed: () => {
          setState(() {
            press = !press;
          })
        },
        style: TextButton.styleFrom(
          backgroundColor: press ? Colors.black12 : const Color(0xFF65468D),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.47),
          ),
        ),
        child: Text(
          widget.g,
          style: TextStyle(
            color: press ? Colors.black : Colors.white,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
