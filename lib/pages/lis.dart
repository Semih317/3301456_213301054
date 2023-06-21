import 'package:flutter/material.dart';

class lis extends StatefulWidget {
  const lis({Key? key}) : super(key: key);

  @override
  State<lis> createState() => _lisState();
}

class _lisState extends State<lis> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff3c4748),
      body: Center(
        child: Container(
          width: 300,
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 150.0),
                child: Card(
                  shape: StadiumBorder(),
                  color: Color(0xff208c8c),
                  child: ListTile(
                    leading: Icon(Icons.screenshot_monitor),
                    title: Text(
                        style: TextStyle(fontWeight: FontWeight.bold),
                        "Ekran Kartı: ATI veya NVidia kart 1024 MB RAM (NVIDIA GeForce GTX 260 veya ATI HD 4890)."),
                  ),
                ),
              ),
              Card(
                shape: StadiumBorder(),
                color: Color(0xff208c8c),
                child: ListTile(
                  leading: Icon(Icons.memory),
                  title: Text(
                      style: TextStyle(fontWeight: FontWeight.bold),
                      "İşlemci: Çift çekirdek 3.0GHz veya muadili."),
                ),
              ),
              Card(
                shape: StadiumBorder(),
                color: Color(0xff208c8c),
                child: ListTile(
                  leading: Icon(Icons.speed),
                  title: Text(
                      style: TextStyle(fontWeight: FontWeight.bold),
                      "Bellek: 2 GB RAM."),
                ),
              ),
              Card(
                shape: StadiumBorder(),
                color: Color(0xff208c8c),
                child: ListTile(
                  leading: Icon(Icons.storage),
                  title: Text(
                      style: TextStyle(fontWeight: FontWeight.bold),
                      "Sabit Disk: 14 GB kullanılabilir alan."),
                ),
              ),
              Card(
                shape: StadiumBorder(),
                color: Color(0xff208c8c),
                child: ListTile(
                  leading: Icon(Icons.computer),
                  title: Text(
                      style: TextStyle(fontWeight: FontWeight.bold),
                      "İşletim Sistemi: Windows 7 veya üzeri."),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff208c8c),
                        shape: StadiumBorder()),
                    child: Text("Geri")),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
