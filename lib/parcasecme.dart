import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mobilodevi/binseksenibes.dart';
import 'package:mobilodevi/binseksenibesonuc.dart';
import 'package:mobilodevi/ucbinelliibes.dart';
import 'package:mobilodevi/ucbinelliibesdokuz.dart';

class parcasecme extends StatefulWidget {
  const parcasecme({Key? key}) : super(key: key);

  @override
  State<parcasecme> createState() => _parcasecmeState();
}

class _parcasecmeState extends State<parcasecme> {
  @override
  String ekrankarti = "";
  String islemci = "";

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1d1d1d),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 350,
              height: 45,
              child: Card(
                shape: StadiumBorder(),
                color: Color(0xff208c8c),
                child: ListTile(
                  leading: Icon(Icons.edit),
                  title: Text(
                      style: TextStyle(fontWeight: FontWeight.bold),
                      "Ekran Kartı ve İşlemciyi Giriniz."),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                  style: TextStyle(fontSize: 20, color: Color(0xffcae9ea)),
                  "Ekran Kartı"),
            ),
            TextFormField(
              style: TextStyle(color: Color(0xffcae9ea)),
              decoration: InputDecoration(
                  hintStyle: TextStyle(color: Color(0xffcae9ea)),
                  hintText:
                      "Ekran Kartını Giriniz (GTX1080Tİ ya da RTX3050Tİ)"),
              onChanged: (ekrankarti2) {
                setState(() {
                  ekrankarti = ekrankarti2;
                });
              },
              keyboardType: TextInputType.text,
              inputFormatters: [
                FilteringTextInputFormatter.singleLineFormatter
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                  style: TextStyle(fontSize: 20, color: Color(0xffcae9ea)),
                  "İşlemci"),
            ),
            TextFormField(
              style: TextStyle(color: Color(0xffcae9ea)),
              decoration: InputDecoration(
                  hintStyle: TextStyle(color: Color(0xffcae9ea)),
                  hintText: "İşlemciyi Giriniz (İ59600K ya da İ513600K)"),
              onChanged: (islemci2) {
                setState(() {
                  islemci = islemci2;
                });
              },
              keyboardType: TextInputType.text,
              inputFormatters: [
                FilteringTextInputFormatter.singleLineFormatter
              ],
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
                        minimumSize: Size(60, 30),
                        shape: StadiumBorder(),
                        backgroundColor: Color(0xff208c8c)),
                    child: Text("Anasayfa"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: ElevatedButton(
                        onPressed: () {
                          if (ekrankarti == "GTX1080Tİ" &&
                              islemci == "İ59600K") {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => binseksenibes()));
                          }
                          if (ekrankarti == "RTX3050Tİ" &&
                              islemci == "İ513600K") {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ucbinelliibes()));
                          }
                          if (ekrankarti == "GTX1080Tİ" &&
                              islemci == "İ513600K") {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => binseksenibesonuc()));
                          }
                          if (ekrankarti == "RTX3050Tİ" &&
                              islemci == "İ59600K") {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        ucbinelliibesdokuz()));
                          }
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff208c8c),
                            minimumSize: Size(60, 30),
                            shape: StadiumBorder()),
                        child: Text("Tamam")),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
