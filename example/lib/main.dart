import 'package:flutter/material.dart';
import 'package:gap_here/gap_here.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: const Text('GapHere Example'),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  color: Colors.blue,
                  width: 100,
                  height: 100,
                ),
                const GapHere(20), // Adding vertical spacing of 20
                Container(
                  color: Colors.green,
                  width: 100,
                  height: 100,
                ),
              ],
            ),
          ),
        ),
      );
}
