import 'package:flutter/material.dart';

class gta5 extends StatefulWidget {
  const gta5({Key? key}) : super(key: key);

  @override
  State<gta5> createState() => _gta5State();
}

class _gta5State extends State<gta5> {
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
                        "Ekran Kartı: NVIDIA GTX 660 2GB / AMD HD7870 2GB."),
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
                      "İşlemci: Intel Core i5 3470 3.2GHZ / AMD X8 FX-8350 4GHZ."),
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
                      "Sabit Disk: 115 GB kullanılabilir alan."),
                ),
              ),
              Card(
                shape: StadiumBorder(),
                color: Color(0xff208c8c),
                child: ListTile(
                  leading: Icon(Icons.computer),
                  title: Text(
                      style: TextStyle(fontWeight: FontWeight.bold),
                      "İşletim Sistemi: Windows 7 64 bit ve üzeri."),
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
