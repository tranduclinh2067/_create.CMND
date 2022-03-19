import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.white,
      systemNavigationBarIconBrightness: Brightness.dark,
    ));
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
        color: Colors.white,
        child: Stack(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 200,
                    height: 200,
                    margin: const EdgeInsets.only(left: 200),
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
                    margin: const EdgeInsets.only(right: 270),
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

Widget frosedCard(BuildContext context) {
  return Center(
    child: ClipRRect(
      borderRadius: BorderRadius.circular(20),
      // ignore: avoid_unnecessary_containers
      child: Container(
        child: Stack(children: [
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 7, sigmaY: 7),
            // ignore: sized_box_for_whitespace
            child: Container(
              height: 220,
              width: 360,
            ),
          ),
          Opacity(
            opacity: 0.2,
            child: Image.asset(
              'assets/techcombank.png',
              width: 360,
              height: 230,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            height: 230,
            width: 360,
            decoration: BoxDecoration(
                boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.25))],
                border: Border.all(
                    color: Colors.white.withOpacity(0.2), width: 1.0),
                gradient: LinearGradient(
                  colors: [
                    Colors.black.withOpacity(0.5),
                    Colors.black.withOpacity(0.2)
                  ],
                  stops: const [0.0, 1.0],
                ),
                borderRadius: BorderRadius.circular(20)),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: 270,
                    child: SvgPicture.asset(
                      'assets/visa.svg',
                      width: 70,
                      color: Colors.white.withOpacity(0.5),
                      alignment: Alignment.topLeft,
                    ),
                  ),
                  Text(
                    '4221 xxxx xxxx 2239',
                    style: TextStyle(
                        fontSize: 38,
                        color: Colors.white.withOpacity(0.4),
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: 275,
                    child: Row(children: [
                      Text('xx/xx',
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.5),
                              fontSize: 12)),
                      const SizedBox(
                        width: 20,
                      ),
                      Text(
                        'GOOD \n THRU',
                        style: TextStyle(
                            fontSize: 6,
                            color: Colors.white.withOpacity(0.5),
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'xx/xx',
                        style: TextStyle(
                            fontSize: 14, color: Colors.white.withOpacity(0.5)),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Text(
                        'xxxxx9559xxxxx',
                        style: TextStyle(
                            fontSize: 14, color: Colors.white.withOpacity(0.5)),
                      )
                    ]),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: 275,
                    child: Text(
                      'xxxx xxx xxxxx',
                      textAlign: TextAlign.end,
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white.withOpacity(0.5),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    ),
  );
}
