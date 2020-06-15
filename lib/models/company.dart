import 'package:fooddelivery/models/product.dart';

class Company {
  String name;
  String description;
  String imgUrl;
  double rating;
  List<Product> products;
  double deliveryFee;
  String workingTime;
  bool favorite;

  like(){
    favorite = !favorite;
  }

  Company({this.name, this.description, this.imgUrl, this.rating, this.products = const [], this.deliveryFee, this.workingTime, this.favorite = false});
}