import 'package:flutter/material.dart';

class DryFruitScreen extends StatefulWidget {
  @override
  _DryFruitScreenState createState() => _DryFruitScreenState();
}

class _DryFruitScreenState extends State<DryFruitScreen> {
  List<String> dryfruits = ["Almonds", "Cashew", "Khumani", "Walnut", "Pista"];

  List<String> images = [
    "assets/dry/almonds.jpg",
    "assets/dry/cashew.jpg",
    "assets/dry/khumani.jpg",
    "assets/dry/walnut.jpg",
    "assets/dry/pista.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(" Dry Fruits"),
          backgroundColor: Colors.red,
          centerTitle: true,
        ),
        backgroundColor: Colors.red[50],
        body: Center(
          child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, crossAxisSpacing: 8, mainAxisSpacing: 8),
              itemCount: dryfruits.length,
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
                            child: Text(
                              dryfruits[index],
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w700),
                            ),
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
