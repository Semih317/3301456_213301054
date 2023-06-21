import 'package:flutter/material.dart';
import 'package:mobilodevi/pages/beyond.dart';
import 'package:mobilodevi/pages/detroit.dart';
import 'package:mobilodevi/pages/gta5.dart';
import 'package:mobilodevi/pages/lis.dart';
import 'package:mobilodevi/pages/tlou.dart';
import 'fortinayti.dart';

class OyunSecmeSayfasi extends StatefulWidget {
  const OyunSecmeSayfasi({Key? key}) : super(key: key);

  @override
  State<OyunSecmeSayfasi> createState() => _OyunSecmeSayfasiState();
}

class _OyunSecmeSayfasiState extends State<OyunSecmeSayfasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff3c4748),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => fortinayti()));
                    },
                    style: ElevatedButton.styleFrom(
                        shape: StadiumBorder(),
                        minimumSize: Size(200, 75),
                        backgroundColor: Color(0xff273b40),
                        elevation: 15.0,
                        shadowColor: Color(0xffcae9ea)),
                    child:
                        const Text("Fortnite", style: TextStyle(fontSize: 20)),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Image.asset(height: 63, width: 168, "images/fortinayti.png"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => detroit()));
                    },
                    style: ElevatedButton.styleFrom(
                        shape: StadiumBorder(),
                        minimumSize: Size(200, 75),
                        backgroundColor: Color(0xff273b40),
                        elevation: 15.0,
                        shadowColor: Color(0xffcae9ea)),
                    child: const Text("Detroit Become Human",
                        style: TextStyle(fontSize: 15)),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Image.asset(height: 63, width: 168, "images/detroit2.png"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => beyond()));
                    },
                    style: ElevatedButton.styleFrom(
                        shape: StadiumBorder(),
                        minimumSize: Size(200, 75),
                        backgroundColor: Color(0xff273b40),
                        elevation: 15.0,
                        shadowColor: Color(0xffcae9ea)),
                    child: const Text("Beyond Two Souls",
                        style: TextStyle(fontSize: 20)),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Image.asset(height: 63, width: 168, "images/beyond.png"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => gta5()));
                    },
                    style: ElevatedButton.styleFrom(
                        shape: StadiumBorder(),
                        minimumSize: Size(200, 75),
                        backgroundColor: Color(0xff273b40),
                        elevation: 15.0,
                        shadowColor: Color(0xffcae9ea)),
                    child: const Text("GTA5", style: TextStyle(fontSize: 20)),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Image.asset(height: 63, width: 168, "images/gta5.png"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => tlou()));
                    },
                    style: ElevatedButton.styleFrom(
                        shape: StadiumBorder(),
                        minimumSize: Size(200, 75),
                        backgroundColor: Color(0xff273b40),
                        elevation: 15.0,
                        shadowColor: Color(0xffcae9ea)),
                    child: const Text("The Last Of Us",
                        style: TextStyle(fontSize: 20)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Image.asset(
                      height: 63,
                      width: 168,
                      "images/The-Last-Of-Us-Logo-PNG-Photo.png"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => lis()));
                    },
                    style: ElevatedButton.styleFrom(
                        shape: StadiumBorder(),
                        minimumSize: Size(200, 75),
                        backgroundColor: Color(0xff273b40),
                        elevation: 15.0,
                        shadowColor: Color(0xffcae9ea)),
                    child: const Text("Life is Strange",
                        style: TextStyle(fontSize: 20)),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Image.asset(height: 63, width: 168, "images/lis.png"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    style: ElevatedButton.styleFrom(
                        shape: StadiumBorder(),
                        minimumSize: Size(150, 50),
                        backgroundColor: Color(0xff273b40),
                        elevation: 15.0,
                        shadowColor: Color(0xffcae9ea)),
                    child:
                        const Text("Anasayfa", style: TextStyle(fontSize: 15)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
