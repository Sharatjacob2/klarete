import 'package:flutter/material.dart';
import 'package:klarete/pages/basic_builder.dart';
import 'package:klarete/pages/special_widgets.dart';
import 'package:klarete/pages/temporary.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              const StarterDesign2(),
              Container(
                padding: const EdgeInsets.all(15.0),
                decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                child: const Text(
                  "Search up people, clubs, classes and..",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  margin: const EdgeInsets.only(left: 35.0),
                  child: const Text(
                    "CLASSES",
                    style: TextStyle(
                      fontSize: 27.3,
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 25.0),
                child: Row(children: <Widget>[
                  SquareBlock("CSA"),
                  SquareBlock("CSB"),
                  SquareBlock("EBE"),
                ]),
              ),
              Container(
                margin: const EdgeInsets.only(left: 25.0),
                child: Row(children: <Widget>[
                  SquareBlock("ECA"),
                  SquareBlock("ECB"),
                  SquareBlock("+"),
                ]),
              ),
              const SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  margin: const EdgeInsets.only(left: 35.0),
                  child: const Text(
                    "CLUBS",
                    style: TextStyle(
                      fontSize: 27.3,
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 25.0),
                child: Row(children: <Widget>[
                  SquareBlock("IEDC"),
                  SquareBlock("TBT"),
                  SquareBlock("TLE"),
                ]),
              ),
              Container(
                margin: const EdgeInsets.only(left: 25.0),
                child: Row(children: <Widget>[
                  SquareBlock("IEEE"),
                  SquareBlock("DSC"),
                  SquareBlock("+"),
                ]),
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                margin: const EdgeInsets.only(left: 15.0, right: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    NextButton("Classes", 'classes'),
                    const SizedBox(
                      width: 5,
                    ),
                    NextButton("Clubs", 'clubs'),
                    const SizedBox(
                      width: 5,
                    ),
                    NextButton("SignUp", 'welcome'),
                    const SizedBox(
                      width: 5,
                    ),
                    NextButton("Loading", 'loading'),
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
