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
        backgroundColor: Colors.grey[200],
        body: Stack(children: [
          Container(
            height: 300,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
              image: DecorationImage(
                image: AssetImage('assets/images/mountain.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                SizedBox(width: 20),
                Text('Hi Mufid',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold)),
                Spacer(),
                SizedBox(
                    height: 75,
                    width: 75,
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/mufid.png'),
                    )),
                SizedBox(width: 20),
              ],
            ),
          ),
          Container(
              margin: const EdgeInsets.fromLTRB(50, 200, 50, 100),
              width: 500,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3), // changes position of shadow
                  )
                ],
              ),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Text('Halo Button',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        )),
                    const Text('Pencet Saya',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        )),
                    SizedBox(
                        width: 250,
                        height: 50,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.black87,
                              backgroundColor: Colors.amber,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            onPressed: () {},
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: const [
                                  Icon(Icons.abc),
                                  Text('Pesan Saya Sekarang',
                                      style: TextStyle(
                                        color: Colors.white,
                                      )),
                                ])))
                  ])),
        ]));
  }
}
