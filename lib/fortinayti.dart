import 'package:flutter/material.dart';

class fortinayti extends StatefulWidget {
  const fortinayti({Key? key}) : super(key: key);

  @override
  State<fortinayti> createState() => _fortinaytiState();
}

class _fortinaytiState extends State<fortinayti> {
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
                        "Ekran Kartı: Nvidia RTX 3070, AMD Radeon RX 6700 XT."),
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
                      "İşlemci: Intel Core i7-11700K, AMD Ryzen 7 5700x"),
                ),
              ),
              Card(
                shape: StadiumBorder(),
                color: Color(0xff208c8c),
                child: ListTile(
                  leading: Icon(Icons.speed),
                  title: Text(
                      style: TextStyle(fontWeight: FontWeight.bold),
                      "Bellek: 16 GB veya üzeri RAM."),
                ),
              ),
              Card(
                shape: StadiumBorder(),
                color: Color(0xff208c8c),
                child: ListTile(
                  leading: Icon(Icons.storage),
                  title: Text(
                      style: TextStyle(fontWeight: FontWeight.bold),
                      "Sabit Disk: NVMe SSD."),
                ),
              ),
              Card(
                shape: StadiumBorder(),
                color: Color(0xff208c8c),
                child: ListTile(
                  leading: Icon(Icons.computer),
                  title: Text(
                      style: TextStyle(fontWeight: FontWeight.bold),
                      "İşletim Sistemi: Windows 10/11 64-bit"),
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
