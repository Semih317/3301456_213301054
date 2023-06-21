import 'package:flutter/material.dart';

class detroit extends StatefulWidget {
  const detroit({Key? key}) : super(key: key);

  @override
  State<detroit> createState() => _detroitState();
}

class _detroitState extends State<detroit> {
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
                        "Ekran Kartı: Nvidia GeForce GTX 1060 veya AMD Radeon RX 580 (En az 4GB bellek.). "),
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
                      "İşlemci: Intel Core i5-6600 3.3 GHz veya AMD Ryzen 3 1300 X 3.4 GHz."),
                ),
              ),
              Card(
                shape: StadiumBorder(),
                color: Color(0xff208c8c),
                child: ListTile(
                  leading: Icon(Icons.speed),
                  title: Text(
                      style: TextStyle(fontWeight: FontWeight.bold),
                      "Bellek: 12 GB RAM."),
                ),
              ),
              Card(
                shape: StadiumBorder(),
                color: Color(0xff208c8c),
                child: ListTile(
                  leading: Icon(Icons.storage),
                  title: Text(
                      style: TextStyle(fontWeight: FontWeight.bold),
                      "Sabit Disk: 55 GB kullanılabilir alan."),
                ),
              ),
              Card(
                shape: StadiumBorder(),
                color: Color(0xff208c8c),
                child: ListTile(
                  leading: Icon(Icons.computer),
                  title: Text(
                      style: TextStyle(fontWeight: FontWeight.bold),
                      "İşletim Sistemi: Windows 10 (64 bit)."),
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
