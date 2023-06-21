import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Wallpaper_Sayfasi extends StatefulWidget {
  const Wallpaper_Sayfasi({Key? key}) : super(key: key);

  @override
  State<Wallpaper_Sayfasi> createState() => _Wallpaper_SayfasiState();
}

class _Wallpaper_SayfasiState extends State<Wallpaper_Sayfasi> {
  List images = [];
  int page = 1;
  @override
  void initState() {
    super.initState();
    fetchapi();
  }

  fetchapi() async {
    await http.get(Uri.parse('https://api.pexels.com/v1/curated?per_page=80'),
        headers: {
          'Authorization':
              '4dvVNYJ1bXtcnH2MAwdIudmS1nOE6ydTmWXoVumLK4fbXfJxC3u7urGu'
        }).then((value) {
      Map result = jsonDecode(value.body);
      setState(() {
        images = result['photos'];
      });
      print(images);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff1d1d1d),
        body: ListView.builder(
          itemCount: (images.length ~/ 2) + 1,
          itemBuilder: (context, index) {
            if (index == images.length ~/ 2) {
              return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.deepOrange[600],
                          minimumSize: Size(150, 50),
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50)))),
                      child: Container(
                        width: 150,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.arrow_back),
                            SizedBox(width: 10),
                            Text("Geri"),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              );
            }
            return SingleChildScrollView(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 168,
                    height: 210,
                    color: Colors.white,
                    margin: EdgeInsets.all(10),
                    child: Image.network(
                      images[index]['src']['large'],
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    width: 168,
                    height: 210,
                    color: Colors.white,
                    margin: EdgeInsets.all(10),
                    child: Image.network(
                      images[index + 40]['src']['large'],
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            );
          },
        ));
  }
}
