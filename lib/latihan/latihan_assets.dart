import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: LatihanAssets(),
  ));
}

class LatihanAssets extends StatefulWidget {
  const LatihanAssets({Key? key}) : super(key: key);

  @override
  State<LatihanAssets> createState() => _LatihanAssetsState();
}

class _LatihanAssetsState extends State<LatihanAssets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      ClipRRect(
          borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30)),
          // child: const Text('hi mufid'),
          child:
              // const Text('hi mufid'),
              Image.asset(
            'assets/images/mountain.jpg',
            width: double.infinity,
            height: 300,
            fit: BoxFit.cover,
          )),
    ]));
  }
}
