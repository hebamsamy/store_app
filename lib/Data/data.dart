import 'category.dart';
import 'product.dart';

class Data {
  List<Category> CategoryList = [
    Category(id: 1, name: "Laptops", desciption: "This is description"),
    Category(id: 2, name: "Tablets", desciption: "This is description"),
    Category(id: 3, name: "Mobiles", desciption: "This is description"),
    Category(id: 4, name: "Electronics", desciption: "This is description"),
    Category(id: 5, name: "TV", desciption: "This is description"),
  ];

  List<Product> ProductList = [
    Product(
        id: 1,
        name: "Lenvo thinpad X230",
        price: 100,
        quantity: 10,
        categoryID: 1,
        imgURL: "https://th.bing.com/th/id/OIP.6NOTkbO0e8QKsQmsAW0JQwHaHa?w=210&h=211&c=7&r=0&o=5&pid=1.7"),
    Product(
        id: 2,
        name: "Dell",
        price: 200,
        quantity: 20,
        categoryID: 1,
        imgURL: "https://th.bing.com/th/id/OIP.OU1CoSplSgGv9VpKxYneSAHaFc?w=226&h=180&c=7&r=0&o=5&pid=1.7"),
    Product(
        id: 3,
        name: "Lenovo Tab",
        price: 100,
        quantity: 10,
        categoryID: 2,
        imgURL: "https://picsum.photos/200"),
    Product(
        id: 4,
        name: "Samsung Tab",
        price: 100,
        quantity: 10,
        categoryID: 2,
        imgURL: "https://picsum.photos/200"),
    Product(
        id: 5,
        name: "Samsung note 10",
        price: 100,
        quantity: 10,
        categoryID: 3,
        imgURL: "https://picsum.photos/200"),
    Product(
        id: 6,
        name: "Samsung S10",
        price: 100,
        quantity: 10,
        categoryID: 3,
        imgURL: "https://picsum.photos/200"),
    Product(
        id: 7,
        name: "tochiba Utlra",
        price: 60000,
        quantity: 14,
        imgURL: "https://picsum.photos/200",
        categoryID: 4),
    Product(
        id: 8,
        name: "Apple Utlra",
        price: 7800060,
        quantity: 6,
        imgURL: "https://picsum.photos/200",
        categoryID: 4),
    Product(
        id: 9,
        name: "test Utlra",
        price: 7800060,
        quantity: 3,
        imgURL: "https://picsum.photos/200",
        categoryID: 4),
    Product(
        id: 10,
        name: "oppo labtop",
        imgURL: "https://picsum.photos/200",
        quantity: 33,
        price: 44444444,
        categoryID: 1),
    Product(
        name: "sm G999",
        price: 7800060,
        quantity: 3,
        imgURL: "https://picsum.photos/200",
        categoryID: 4,
        id: 11),
  ];

  List<Product> FilterByCategory(Category selected){
    return ProductList.where
    ((item)=> item.categoryID == selected.id).toList();


    // List<Product> newlist = [];
    // for (var i = 0; i < ProductList.length; i++) {
    //   if (ProductList[i].categoryID == selected.id) {
    //     newlist.add(ProductList[i]);
    //   }

    // }

    // return newlist;
  }
}
