import 'package:appp/Data/data.dart';
import 'package:appp/Data/category.dart';
import 'package:appp/Screens/productsScreen.dart';
import 'package:flutter/material.dart';

class Explorescreen extends StatelessWidget {
  const Explorescreen({super.key});
  static String screenName = "/explore";

  @override
  Widget build(BuildContext context) {
    List<Category> list = Data().CategoryList;
    return ListView.builder(
            itemCount: list.length,
            itemBuilder: (context, index) => InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed(Productsscreen.screenName,arguments: list[index]);
                  },
                  child: Card(
                    child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Text(list[index].name)),
                  ),
                ));
  }
}


//GestureDetector