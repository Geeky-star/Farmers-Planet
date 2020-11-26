import 'package:farm_planet/screens/crops.dart';
import 'package:farm_planet/screens/dry_fruits.dart';
import 'package:farm_planet/screens/fruits.dart';
import 'package:farm_planet/screens/vegetable.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> categorynames = ["Vegetables", "Fruits", "Crops", "Dry Fruits"];

  List<String> categories = [
    "assets/vegetable.jpg",
    "assets/fruits.jpg",
    "assets/wheats.jpg",
    "assets/dryfruits.jpg"
  ];

  List screenstates = [
    VegetableScreen(),
    FruitScreen(),
    CropScreen
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    (),
    DryFruitScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 350,
            child: new Stack(
              children: <Widget>[
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(50),
                            bottomRight: Radius.circular(50)),
                        color: Colors.greenAccent[200]),
                    width: 300,
                    height: 250,
                  ),
                ),
                Positioned(
                  top: 50,
                  left: 120,
                  child: Text(
                    "Welcome",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Positioned(
                  top: 80,
                  left: 170,
                  child: Text(
                    "to",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Positioned(
                  top: 120,
                  left: 80,
                  child: Text(
                    "Agriculture World",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Positioned(
                  top: 300,
                  left: 140,
                  child: Text(
                    "Categories",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
                      child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, crossAxisSpacing: 8, mainAxisSpacing: 8),
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => screenstates[index],
                            ));
                      },
                      child: Container(
                          child: Column(
                        children: [
                          Image.asset(categories[index]),
                          Padding(
                            padding: const EdgeInsets.all(0),
                            child: Text(
                              categorynames[index],
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w500),
                            ),
                          )
                        ],
                      )),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
