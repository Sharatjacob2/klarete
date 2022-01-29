import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/material.dart';
import 'package:klarete/pages/special_widgets.dart';
import 'package:klarete/pages/basic_builder.dart';

class ChooseClubs extends StatefulWidget {
  const ChooseClubs({Key? key}) : super(key: key);

  @override
  _ChooseClubsState createState() => _ChooseClubsState();
}

class _ChooseClubsState extends State<ChooseClubs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SizedBox(
        height: 80,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            LongButton("INITIATIVES", 'chooseInitiatives', 1),
            LongButton("SKIP ALL", 'homer', 2),
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
                  margin: const EdgeInsets.only(left: 40.0),
                  child: const Text(
                    "Select your clubs:",
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
                    Row(
                      children: const [
                        ClubSelect(),
                        ClubSelect(),
                        ClubSelect(),
                      ],
                    ),
                    Row(
                      children: const [
                        ClubSelect(),
                        ClubSelect(),
                        ClubSelect(),
                      ],
                    ),
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

class ClubSelect extends StatefulWidget {
  const ClubSelect({
    Key? key,
  }) : super(key: key);

  @override
  State<ClubSelect> createState() => _ClubSelectState();
}

class _ClubSelectState extends State<ClubSelect> {
  bool press = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10.0, top: 10.0),
      width: 90,
      height: 90,
      decoration: const BoxDecoration(
        color: Color(0xFFAA064C),
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: TextButton(
        onPressed: () => {
          setState(() {
            press = !press;
          })
        },
        style: TextButton.styleFrom(
          padding: const EdgeInsetsDirectional.all(0),
          primary: Colors.white,
        ),
        child: press
            ? ClipRRect(
                borderRadius: BorderRadius.circular(10.47),
                child: const Image(
                  image: AssetImage('assets/illumin.png'),
                  fit: BoxFit.cover,
                ),
              )
            : const Icon(
                Icons.done,
                size: 40,
              ),
      ),
    );
  }
}
