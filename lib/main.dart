import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  Container(
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                Container(
                  color: Colors.cyan,
                  height: 100,
                  width: 100,
                ),
                Container(
                  color: Colors.deepPurple,
                  width: 50,
                  height: 50,
                ),
              ],
            ),
            Stack(
              children: [
                Container(
                  color: Colors.cyan,
                  height: 100,
                  width: 100,
                ),
                Container(
                  color: Colors.deepPurple,
                  width: 50,
                  height: 50,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  color: Colors.cyan,
                  height: 50,
                  width: 50,
                ),
                Container(
                  color: Colors.pinkAccent,
                  height: 50,
                  width: 50,
                ),
                Container(
                  color: Colors.purple,
                  height: 50,
                  width: 50,
                ),
              ],
            ),
            Container(
              color: Colors.amber,
              height: 30,
              width: 300,
              child: Text('Diamante yellow',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 28,
                  )),
              alignment: Alignment.center,
            ),
            ElevatedButton(
                onPressed: () {
                  print('Você apertou o botão');
                },
                child: Text('Aperte o botão'))
          ],
        ),
      ),
    );
  }
}


