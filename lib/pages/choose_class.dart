import 'package:flutter/material.dart';
import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:klarete/pages/special_widgets.dart';
import 'package:klarete/pages/basic_builder.dart';

class ChooseClass extends StatefulWidget {
  const ChooseClass({Key? key}) : super(key: key);

  @override
  _ChooseClassState createState() => _ChooseClassState();
}

class _ChooseClassState extends State<ChooseClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SizedBox(
        height: 80,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            LongButton("CLUBS", 'chooseClubs', 1),
            LongButton("SKIP ALL", 'homer', 2),
          ],
        ),
      ),
      backgroundColor: Colors.white,
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
                  "Select your class:",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 25.0),
              child: Row(children: <Widget>[
                SelectBlock("CSA"),
                SelectBlock("CSB"),
                SelectBlock("EBE"),
              ]),
            ),
            Container(
              margin: const EdgeInsets.only(left: 25.0),
              child: Row(children: <Widget>[
                SelectBlock("ECA"),
                SelectBlock("ECB"),
                SelectBlock("EEE"),
              ]),
            ),
            Center(
                child: Container(
                    margin: const EdgeInsets.only(right: 10.0),
                    child: SelectBlock("MECH"))),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: const <Widget>[
                SizedBox(
                  width: 20,
                ),
                SizedBox(
                  height: 60,
                  width: 190,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "Year Of Passout: ",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 21.99,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                  width: 100,
                  child: Card(
                    color: Colors.black,
                    child: Center(
                      child: Text(
                        "2023",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
