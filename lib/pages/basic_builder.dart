import 'package:flutter/material.dart';
import 'package:klarete/pages/special_widgets.dart';

class StarterDesign1 extends StatelessWidget {
  const StarterDesign1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        const Image(
          image: AssetImage('assets/Group1.png'),
        ),
        const Positioned(
          top: 63,
          left: 32,
          child: Return(),
        ),
        Positioned(
          top: 25,
          left: 125,
          child: Container(
            width: 110,
            height: 110,
            decoration: const BoxDecoration(
              color: Color(0xFFAA064C),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: const Icon(
              Icons.person,
              size: 80.0,
              color: Colors.white,
            ),
          ),
        ),
        Positioned(
          bottom: -1.0,
          child: Container(
            width: 360,
          height: 30,
            decoration: const BoxDecoration(
              color: Color(0xFFFAFAFA),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(45),
                topRight: Radius.circular(45),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class StarterDesign2 extends StatelessWidget {
  const StarterDesign2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        const Image(
          image: AssetImage('assets/Group3.png'),
        ),
        Positioned(
          bottom: 0,
          child: SizedBox(
            width: 360,
            height: 30,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(45),
                  topRight: Radius.circular(45),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
