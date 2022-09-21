import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Latihan(),
  ));
}

class Latihan extends StatefulWidget {
  const Latihan({super.key});

  @override
  State<Latihan> createState() => _LatihanState();
}

class _LatihanState extends State<Latihan> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text('Latihan'),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('text 1'),
            SizedBox(height: 6),
            Text('text 2'),
            SizedBox(height: 6),
            Text('text 3'),
            SizedBox(height: 6),
            Text('text 4'),
            SizedBox(height: 6),
          ],
        ),
      ),
    ));
  }
}
