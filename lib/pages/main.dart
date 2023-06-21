import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobilodevi/pages/OyunSecmeSayfasi.dart';
import 'package:mobilodevi/pages/parcasecme.dart';
import 'package:mobilodevi/pages/wallpaper_sayfasi.dart';
import 'package:mobilodevi/firebase_firestore/widget_tree.dart';
import 'avatars.dart';
import 'package:firebase_core/firebase_core.dart';
import 'favorites.dart';
import '../firebase_firestore/firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GameSpecs',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: WidgetTree(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.menu, size: 35),
        actions: [
          Padding(
            padding: EdgeInsets.fromLTRB(0, 17, 20, 0),
            child: Text(
                style: GoogleFonts.bebasNeue(
                  fontSize: 20,
                  color: Colors.white,
                ),
                user.email! + " giriş yaptı"),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => (avatars())),
                );
              },
              child: Container(
                width: 80,
                height: 80,
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Color.fromRGBO(255, 192, 0, 1),
                        width: 3,
                        strokeAlign: BorderSide.strokeAlignOutside),
                    color: Colors.white,
                    shape: BoxShape.circle),
                child: Image.asset(
                  "images/avatar_fortinayti.jpg",
                  fit: BoxFit.contain,
                ),
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.white10,
        backgroundColor: Color(0xff1d1d1d),
        items: [
          Icon(color: Colors.grey, Icons.home),
          GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => (Favorites())),
                );
              },
              child: Icon(color: Colors.grey, Icons.favorite))
        ],
      ),
      backgroundColor: Color(0xff1d1d1d),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(10, 0, 0, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ElevatedButton(
                  onPressed: () {
                    FirebaseAuth.instance.signOut();
                  },
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(Size(125, 35)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.deepPurple),
                  ),
                  child: Container(
                    width: 125,
                    height: 35,
                    decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: Text(
                        style: GoogleFonts.bebasNeue(
                            fontSize: 25, color: Colors.white),
                        "Çıkış Yap",
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 25),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(12),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => (Wallpaper_Sayfasi())),
                          );
                        },
                        splashColor: Color.fromRGBO(25, 25, 112, 1),
                        highlightColor: Color.fromRGBO(0, 0, 139, 1),
                        child: Container(
                            padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
                            width: 194,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.black54,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: Image.asset("images/wp.png.png"),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 12.0, horizontal: 8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                          style: GoogleFonts.bebasNeue(
                                              fontSize: 20,
                                              color: Colors.white),
                                          "Duvar Kağıtları"),
                                      Text(
                                          style: GoogleFonts.bebasNeue(
                                              color: Colors.grey[400]),
                                          "Oyun, Doğa, Araba...")
                                    ],
                                  ),
                                ),
                              ],
                            )),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Column(children: [
                        InkWell(
                          borderRadius: BorderRadius.circular(12),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => (OyunSecmeSayfasi())),
                            );
                          },
                          splashColor: Colors.orange,
                          highlightColor: Colors.amber,
                          child: Container(
                              padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
                              width: 194,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.black54,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(12),
                                    child: Image.asset("images/steam2.jpg.jpg"),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 35.0, horizontal: 8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                            style: GoogleFonts.bebasNeue(
                                                fontSize: 20,
                                                color: Colors.white),
                                            "Oyun Seç"),
                                        Text(
                                            style: GoogleFonts.bebasNeue(
                                                color: Colors.grey[400]),
                                            "Fortinayti, GTA5...")
                                      ],
                                    ),
                                  ),
                                ],
                              )),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 17, 0, 0),
                          child: InkWell(
                              borderRadius: BorderRadius.circular(12),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => (parcasecme())),
                                );
                              },
                              splashColor: Colors.deepPurple,
                              highlightColor: Colors.purple,
                              child: Container(
                                padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
                                width: 194,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.black54,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(12),
                                      child: Image.asset("images/gpu.jpg"),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          vertical: 35.0, horizontal: 8.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                              style: GoogleFonts.bebasNeue(
                                                  fontSize: 20,
                                                  color: Colors.white),
                                              "Parça Seç"),
                                          Text(
                                              style: GoogleFonts.bebasNeue(
                                                  color: Colors.grey[400]),
                                              "ekran kartı ve işlemci")
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              )),
                        ),
                      ]),
                    ),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
