import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SelectBlock extends StatefulWidget {
  late String g;
  SelectBlock(String s, {key}) : super(key: key) {
    g = s;
  }

  @override
  State<SelectBlock> createState() => _SelectBlockState();
}

class _SelectBlockState extends State<SelectBlock> {
  bool press = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10.0, top: 10.0),
      width: 90,
      height: 90,
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
            fontSize: 21.99,
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class LongButton extends StatelessWidget {
  late String texter, g;
  late int n;
  LongButton(String s, String h, int m, {Key? key}) : super(key: key) {
    texter = s;
    g = h;
    n = m;
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 70,
        child: TextButton(
          onPressed: () {
            Navigator.pushNamed(context, '/$g');
          },
          style: TextButton.styleFrom(
            primary: n == 1 ? Colors.white : Colors.black,
            backgroundColor: n == 1 ? const Color(0xFFAA064C) : Colors.black12,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0),
            ),
          ),
          child: Text(
            texter,
            style: TextStyle(
              color: n == 1 ? Colors.white : Colors.black,
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class Interest extends StatefulWidget {
  late String g;
  Interest(String s, {Key? key}) : super(key: key) {
    g = s;
  }

  @override
  State<Interest> createState() => _InterestState();
}

class _InterestState extends State<Interest> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xFF65468D),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          primary: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.all(3.0),
          child: Text(
            widget.g,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}

class Return extends StatelessWidget {
  const Return({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: const BoxDecoration(
        color: Color(0xFFAA064C),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: TextButton(
        onPressed: () {
          Navigator.pop(context);
        },
        style: TextButton.styleFrom(
          primary: Colors.white,
        ),
        child: const Icon(
          Icons.arrow_back,
          size: 34.0,
          color: Colors.white,
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class SquareBlock extends StatelessWidget {
  late String g;
  SquareBlock(String s, {key}) : super(key: key) {
    g = s;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10.0, top: 10.0),
      width: 90,
      height: 90,
      child: TextButton(
        onPressed: () {
          Navigator.pushNamed(context, '/notMade');
        },
        style: TextButton.styleFrom(
          backgroundColor: g == '+'
              ? Theme.of(context).primaryColor
              : const Color(0xFF65468D),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.47),
          ),
        ),
        child: Center(
          child: g == '+'
              ? const Icon(
                  Icons.add,
                  size: 40,
                  color: Colors.white,
                )
              : Text(
                  g,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 21.99,
                  ),
                ),
        ),
      ),
    );
  }
}
