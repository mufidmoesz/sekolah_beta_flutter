// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: LatihanWidget(),
  ));
}

class LatihanWidget extends StatefulWidget {
  const LatihanWidget({Key? key}) : super(key: key);

  @override
  State<LatihanWidget> createState() => _LatihanWidgetState();
}

class _LatihanWidgetState extends State<LatihanWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.yellow,
            title: const Text('Halo saya latihan',
                style: TextStyle(color: Colors.white)),
            centerTitle: true,
            leading: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert),
            )),
        body: Column(children: [
          SizedBox(height: 10),
          Center(child: Text('Saya Widget ditengah')),
          Container(color: Colors.red, height: 40),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            Column(children: const [Text('Saya di kiri')]),
            Column(children: const [Text('Saya di kanan')]),
          ]),
          Container(
              padding: EdgeInsets.all(10),
              color: Colors.yellow,
              child: Container(
                color: Colors.purple,
                height: 50,
                child: Center(child: Text('Saya Berwarna')),
              )),
          Spacer(),
          Container(
            height: 80,
            width: double.infinity,
            color: Colors.black,
            child: Center(
                child: Text('Saya di bawah sendiri',
                    style: TextStyle(color: Colors.white))),
          ),
        ]),
        // bottomNavigationBar: BottomAppBar(
        //   color: Colors.black,
        //   child: Column(children: const [Text('Saya di bawah')]),
        // ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.yellow,
          child: Icon(Icons.abc, color: Colors.black, size: 30),
          // child: const Text('ABC',
          //     style: TextStyle(
          //       color: Colors.black,
          //       fontWeight: FontWeight.bold,
          //     )),
        ));
  }
}
