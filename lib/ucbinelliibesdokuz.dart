import 'package:flutter/material.dart';

class ucbinelliibesdokuz extends StatefulWidget {
  const ucbinelliibesdokuz({Key? key}) : super(key: key);

  @override
  State<ucbinelliibesdokuz> createState() => _ucbinelliibesdokuzState();
}

class _ucbinelliibesdokuzState extends State<ucbinelliibesdokuz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1d1d1d),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24)),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset(height: 240, "images/mincraft.jpg"),
                  Positioned(
                    bottom: 16,
                    right: 16,
                    left: 16,
                    child: Text(
                      "Minecraft",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 40,
                          color: Colors.white60),
                    ),
                  ),
                ],
              ),
            ),
            Card(
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24)),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset(height: 240, "images/fifa.jpg"),
                  Positioned(
                    bottom: 16,
                    right: 16,
                    left: 16,
                    child: Text(
                      "FIFA 23",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 40,
                          color: Colors.white60),
                    ),
                  ),
                ],
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff273b40),
                    minimumSize: Size(100, 50),
                    shape: StadiumBorder()),
                child: Text("Geri")),
          ],
        ),
      ),
    );
  }
}
