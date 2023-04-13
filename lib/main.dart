import 'package:flutter/material.dart';
import 'package:mobilodevi/OyunSecmeSayfasi.dart';
import 'package:mobilodevi/parcasecme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GameSpecs',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1d1d1d),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => OyunSecmeSayfasi()));
                },
                style: ElevatedButton.styleFrom(
                    shape: StadiumBorder(),
                    minimumSize: Size(1000, 200),
                    backgroundColor: Color(0xff273b40),
                    elevation: 15.0,
                    shadowColor: Color(0xffcae9ea)),
                child: const Text("Oyun Seç", style: TextStyle(fontSize: 50)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => parcasecme()));
                },
                style: ElevatedButton.styleFrom(
                    shape: StadiumBorder(),
                    minimumSize: Size(1000, 200),
                    backgroundColor: Color(0xff273b40),
                    elevation: 15.0,
                    shadowColor: Color(0xffcae9ea)),
                child: const Text("Parça Seç", style: TextStyle(fontSize: 50)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
