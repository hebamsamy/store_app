import 'package:appp/Data/data.dart';
import 'package:appp/Data/product.dart';

import "../Data/category.dart";
import 'package:flutter/material.dart';

class Productsscreen extends StatelessWidget {
  const Productsscreen({super.key});
  static String screenName = "/products";
  @override
  Widget build(BuildContext context) {
    Category selected = ModalRoute.of(context)!.settings.arguments as Category;
    List<Product> list = Data().FilterByCategory(selected);
    return Scaffold(
      appBar: AppBar(
        title: Text("Our ${selected.name}"),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            // width/ height
            childAspectRatio: 1 / 1.5),
        itemCount: list.length,
        itemBuilder: (context, index) => GridTile(
          child: Image.network(list[index].imgURL, fit: BoxFit.fill,),
          footer: GridTileBar(
            backgroundColor: Colors.blueGrey,
            title: Text(list[index].name),
          ),
        ),
      ),
    );
  }
}
