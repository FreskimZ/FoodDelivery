class Product{
  String name;
  String ingredients;
  String imgUrl;
  double price;
  String size;
  int quantityInCart;

  Product({this.name, this.ingredients, this.imgUrl, this.price, this.size = '', this.quantityInCart = 0});
}