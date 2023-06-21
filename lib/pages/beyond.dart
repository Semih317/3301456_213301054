import 'package:flutter/material.dart';

class beyond extends StatefulWidget {
  const beyond({Key? key}) : super(key: key);

  @override
  State<beyond> createState() => _beyondState();
}

class _beyondState extends State<beyond> {
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
                        "Ekran Kartı: Nvidia GeForce GTX 970 4GB RAM veya AMD Radeon R9 390 4GB RAM."),
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
                      "İşlemci: Intel Core i5-6600K 3.5GHz veya AMD Ryzen 3 1300X 3.4GHz."),
                ),
              ),
              Card(
                shape: StadiumBorder(),
                color: Color(0xff208c8c),
                child: ListTile(
                  leading: Icon(Icons.speed),
                  title: Text(
                      style: TextStyle(fontWeight: FontWeight.bold),
                      "Bellek: 8 GB RAM."),
                ),
              ),
              Card(
                shape: StadiumBorder(),
                color: Color(0xff208c8c),
                child: ListTile(
                  leading: Icon(Icons.storage),
                  title: Text(
                      style: TextStyle(fontWeight: FontWeight.bold),
                      "Sabit Disk: 49 GB kullanılabilir alan."),
                ),
              ),
              Card(
                shape: StadiumBorder(),
                color: Color(0xff208c8c),
                child: ListTile(
                  leading: Icon(Icons.computer),
                  title: Text(
                      style: TextStyle(fontWeight: FontWeight.bold),
                      "İşletim Sistemi: Windows 7 veya üstü (64 bit)."),
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
