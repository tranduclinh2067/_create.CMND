import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.amber,
        child: Stack(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 200,
                    height: 200,
                    margin: EdgeInsets.only(left: 200),
                    decoration: BoxDecoration(
                        gradient: const LinearGradient(
                            colors: [Colors.pink, Colors.amber],
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft),
                        borderRadius: BorderRadius.circular(100)),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    margin: EdgeInsets.only(right: 270),
                    decoration: BoxDecoration(
                        gradient: const LinearGradient(
                            colors: [Colors.pink, Colors.amber],
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft),
                        borderRadius: BorderRadius.circular(100)),
                  ),
                ],
              ),
            ),
            frosedCard(context),
          ],
        ),
      ),
    );
  }
}

// https://www.youtube.com/watch?v=2a_Za4C5k48
// 05.48

Widget frosedCard(BuildContext context) {
  return Center(
    child: Stack(children: [
      Container(
        height: 230,
        width: 360,
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.white.withOpacity(0.6),
                Colors.white.withOpacity(0.12)
              ],
              stops: [0.0, 1.0],
            ),
            borderRadius: BorderRadius.circular(20)),
      ),
    ]),
  );
}
