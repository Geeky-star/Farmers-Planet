import 'package:flutter/material.dart';

class FruitScreen extends StatefulWidget {
  @override
  _FruitScreenState createState() => _FruitScreenState();
}

class _FruitScreenState extends State<FruitScreen> {
  List<String> fruits = [
    "Apple",
    "Berries",
    "Khumani",
    "pineapple",
    "strawberry"
  ];

  List<String> images = [
    "assets/fruits/apple.jpg",
    "assets/fruits/berries.jpg",
    "assets/fruits/khumani.jpg",
    "assets/fruits/pineapple.jpg",
    "assets/fruits/strawberry.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Fruits"),
          backgroundColor: Colors.red,
          centerTitle: true,
        ),
        backgroundColor: Colors.red[50],
        body: Center(
          child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, crossAxisSpacing: 8, mainAxisSpacing: 8),
              itemCount: fruits.length,
              itemBuilder: (BuildContext context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    child: Container(
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            images[index],
                            fit: BoxFit.fitWidth,
                            height: 120,
                          ),
                          Padding(
                            padding: EdgeInsets.all(8),
                            child: Text(fruits[index],
                            style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              }),
        ));
  }
}
