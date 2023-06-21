import "package:flutter/material.dart";
import 'package:mobilodevi/main.dart';
import '../models/oyun.dart';
import '../services/db_utils.dart';

DbUtils utils = DbUtils();

class ListOyun extends StatefulWidget {
  @override
  _ListOyunState createState() => _ListOyunState();
}

class _ListOyunState extends State<ListOyun> {
  List<Oyun> dogList = [];

  void getData() async {
    await utils.dogs().then((result) => {
          setState(() {
            dogList = result;
          })
        });
    print(dogList);
  }

  void showAlert(String alertTitle, String alertContent) {
    AlertDialog alertDialog;
    alertDialog =
        AlertDialog(title: Text(alertTitle), content: Text(alertContent));
    showDialog(context: context, builder: (_) => alertDialog);
  }

  @override
  void initState() {
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.deepPurpleAccent,
          title: Text(dogList.length.toString() + " Oyun Listelendi")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: dogList.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.add),
                        Text(dogList[index].name),
                      ],
                    ),
                    onTap: () {
                      showAlert("Dog " + index.toString() + " clicked",
                          "Dog " + index.toString() + " clicked");
                    },
                    onLongPress: () async {
                      await utils.deleteDog(dogList[index].id).then((value) => {
                            showAlert("Dog " + index.toString() + " deleted",
                                "Dog " + index.toString() + " deleted")
                          });
                      getData();
                    },
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => (MyHomePage(title: ""))),
                  );
                },
                child: Container(
                  width: 200,
                  height: 60,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(color: Colors.white, Icons.home),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            "Anasayfa",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        ]),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
