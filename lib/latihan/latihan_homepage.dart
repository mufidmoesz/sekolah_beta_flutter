import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Column(children: [
          Container(
            margin: const EdgeInsets.all(30),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: const [
                  Text('Hello Anderson\nHave a nice day',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                ],
              ),
              const Spacer(),
              Column(
                children: const [
                  SizedBox(
                      height: 75,
                      width: 75,
                      child: CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/mufid.png'),
                            radius: 31,
                          ))),
                ],
              ),
            ],
          ),
          Stack(children: [
            Container(
                margin: const EdgeInsets.fromLTRB(50, 50, 50, 100),
                width: 500,
                height: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    image: const DecorationImage(
                      image: AssetImage('assets/images/lion.jpg'),
                      fit: BoxFit.cover,
                    )),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      SizedBox(width: 20, height: 300),
                      Text('Animal',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ])),
          ])
        ]));
  }
}
