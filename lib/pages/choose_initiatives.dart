import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/material.dart';
import 'package:klarete/pages/special_widgets.dart';
import 'package:klarete/pages/basic_builder.dart';

class ChooseInitiatives extends StatefulWidget {
  const ChooseInitiatives({Key? key}) : super(key: key);

  @override
  _ChooseInitiativesState createState() => _ChooseInitiativesState();
}

class _ChooseInitiativesState extends State<ChooseInitiatives> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SizedBox(
        height: 80,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            LongButton("PUBLICATIONS", 'choosePub', 1),
            LongButton("SKIP ALL", 'home', 2),
          ],
        ),
      ),
      backgroundColor: const Color(0xFFFAFAFA),
      body: ColorfulSafeArea(
        color: const Color(0xFF65468D),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              const StarterDesign1(),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: const EdgeInsets.only(left: 30.0),
                  child: const Text(
                    "Select your initiatives:",
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
              Container(
                margin: const EdgeInsets.only(left: 25.0),
                child: Column(
                  children: [
                    Row(
                      children: <Widget>[
                        SelectBlock("THE MEC PODCAST"),
                        SelectBlock("FORTITUDE"),
                        SelectBlock("UNFAZE"),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        SelectBlock("CSA"),
                        SelectBlock("CSB"),
                        SelectBlock("EBE"),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        SelectBlock("CSA"),
                        SelectBlock("CSB"),
                        SelectBlock("EBE"),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        SelectBlock("CSA"),
                        SelectBlock("CSB"),
                        SelectBlock("EBE"),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        SelectBlock("CSA"),
                        SelectBlock("CSB"),
                        SelectBlock("EBE"),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
