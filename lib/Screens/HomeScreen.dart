import 'package:appp/Screens/ExploreScreen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static String screenName = "/";
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;
  List<Widget> Bodies =[
    Center(child: Text("Home"),),
    Explorescreen(),
    Center(child: Text("Shopping Cart"),),
    Center(child: Text("Settings"),),
  ];
   List<Widget> titles =[
    Text("Home"),
    Text("Categories"),
    Text("Shopping Cart"),
    Text("Settings"),
  ];
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        currentIndex: index,
        onTap: (newIndex){
          setState(() {
            index = newIndex;
          });
        },
        selectedItemColor: Colors.purple,
        unselectedItemColor:  const Color.fromARGB(255, 223, 142, 237),
        items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.category),label: "Category"),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_bag),label: "Cart"),
        BottomNavigationBarItem(icon: Icon(Icons.settings),label: "Settings"),
      ]),
      appBar: AppBar(
        title: titles[index],
      ),
      body: Bodies[index],
      drawer: SafeArea(child: 
      Column(
        children: [
          Center(child: Text("Opened"),)
        ],
      )),
    );
  }
}
