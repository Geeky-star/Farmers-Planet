import 'package:flutter/material.dart';

class CropScreen extends StatefulWidget {
  @override
  _CropScreenState createState() => _CropScreenState();
}

class _CropScreenState extends State<CropScreen> {
  List<String> crops = ["Corn", "Wheat", "Sugarcane", "Rices", "Cotton"];

  List<String> cimages = [
    "assets/crops/corn.jpg",
    "assets/crops/wheat.jpg",
    "assets/crops/sugarcane.jpg",
    "assets/crops/rices.jpg",
    "assets/crops/cotton.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Crops"),
          backgroundColor: Colors.amber,
          centerTitle: true,
        ),
        backgroundColor: Colors.red[50],
        body: Center(
          child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, crossAxisSpacing: 8, mainAxisSpacing: 8),
              itemCount: crops.length,
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
                            cimages[index],
                            fit: BoxFit.fitWidth,
                            height: 120,
                          ),
                          Padding(
                            padding: EdgeInsets.all(8),
                            child: Text(
                              crops[index],
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
