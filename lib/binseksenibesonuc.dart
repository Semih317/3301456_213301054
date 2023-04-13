import 'package:flutter/material.dart';

class binseksenibesonuc extends StatefulWidget {
  const binseksenibesonuc({Key? key}) : super(key: key);

  @override
  State<binseksenibesonuc> createState() => _binseksenibesonucState();
}

class _binseksenibesonucState extends State<binseksenibesonuc> {
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
                  Image.asset(height: 240, "images/lis3.webp"),
                  Positioned(
                    bottom: 16,
                    right: 16,
                    left: 16,
                    child: Text(
                      "Life is Strange True Colors",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 40,
                          color: Colors.white),
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
                  Image.asset(height: 240, "images/bf2042.webp"),
                  Positioned(
                    bottom: 16,
                    right: 16,
                    left: 16,
                    child: Text(
                      "Battlefield 2042",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 40,
                          color: Colors.white),
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
