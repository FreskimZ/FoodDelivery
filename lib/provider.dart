import 'package:flutter/foundation.dart';

import 'models/company.dart';
import 'models/product.dart';

class AppProvider with ChangeNotifier {
  List<Company> _companies = [
    Company(
      name: 'Burger king',
      description: 'Best Burgers',
      imgUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/7/79/Burger_King_logo.svg/512px-Burger_King_logo.svg.png',
      rating: 3.5,
      deliveryFee: 2.5,
      workingTime: '8AM : 11PM',
      products: <Product>[
        Product(
          name: 'Burger',
          ingredients:
              'Ground Meat, Grilled Buns, Lettuce, Tomato, Pickles, Onion Rings, Cheese',
          imgUrl:
              'http://www.pngall.com/wp-content/uploads/2016/05/Burger-Free-Download-PNG.png',
          price: 2.30,
        ),
        Product(
          name: 'Chicken Burger',
          ingredients: 'Chicken Meat, Smoked Buns, Lettuce, Tomato, Cheese',
          imgUrl:
              'http://www.pngall.com/wp-content/uploads/2016/05/Burger-PNG-HD.png',
          price: 3,
        ),
        Product(
          name: 'Big Burger',
          ingredients:
              '2 Pieces of Ground Meat, Grilled Buns, Lettuce, Cheese, Onion Rings, Tomato',
          imgUrl:
              'http://www.pngall.com/wp-content/uploads/2016/05/Burger-PNG-File.png',
          price: 4.5,
        ),
        Product(
          name: 'Onion Burger',
          ingredients:
              'Ground Meat, Grilled Buns, Fried Onion Rings, Tomato, Cheese',
          imgUrl: 'http://www.pngall.com/wp-content/uploads/2016/05/Burger.png',
          price: 4,
        )
      ],
    ),
    Company(
        name: 'KFC',
        description: 'Best fried chicken',
        imgUrl:
            'https://3dpng.com/wp-content/uploads/2020/05/KFC-Hd-Clipart.png',
        rating: 4.3,
        deliveryFee: 2,
        workingTime: '7AM : 11AM',
        products: <Product>[
          Product(
            name: '3 Piece chicken',
            ingredients: '3 pieces of fried boneless chicken legs',
            imgUrl:
                'https://www.kfc.com.au/sites/default/files/alohadata/images/products/P3_3PieceBox_web_mobile.jpg',
            price: 2.3,
          ),
          Product(
            name: 'Chicken with fries',
            ingredients: '3 fired chicken legs, fries',
            imgUrl:
                'https://i.pinimg.com/originals/cf/12/09/cf12093c4418e3c58d2d9c53b26b6436.jpg',
            price: 3,
          ),
          Product(
            name: 'Bucket of chicken',
            ingredients: 'A bucket of chicken wings, legs and breasts',
            imgUrl:
                'https://i.pinimg.com/736x/39/3a/7f/393a7fb8cb20bb637d662874ee02906a.jpg',
            price: 5,
          )
        ]),
    Company(
        name: 'Pizza Hut',
        description: 'Best Pizza in the world',
        imgUrl:
            'https://logos-download.com/wp-content/uploads/2016/04/Pizza_Hut_logo_logotype.png',
        rating: 5,
        deliveryFee: 1.5,
        workingTime: '9AM : 10PM',
        products: <Product>[
          Product(
            name: 'Pizza margherita',
            ingredients: 'A simple pizza with just peperoni and cheese',
            imgUrl:
                'https://png2.cleanpng.com/sh/73d918d48d7481b54ddbdb0fbb9886a0/L0KzQYm3UsExN6V0fZH0aYP2gLBuTgNifaRmf9c2cHn9irK0jfFzb5lqitt9YT3rcb7plgJobaMye9N1enBxdX76ggV0aZhqReJyeorkPYboVBY6a5VrTqsDZEe7PoaBUsc2P2E4Sac6OEO0QoeAUcQ0OmUziNDw/kisspng-sausage-pizza-margherita-hamburger-calzone-sausage-pizza-5a7f9cdf698d78.5827570315183126714324.png',
            price: 2,
          ),
          Product(
            name: 'Mushroom Pizza',
            ingredients: 'A Pizza with peperoni,cheese and mushrooms',
            imgUrl:
                'https://png2.cleanpng.com/sh/8c855ddef93a9dc2a9eb2070baa3572a/L0KzQYm3UcI6N6VmfZH0aYP2gLBuTfNidJprhAR3aXGwg8XCjPUueJpBktM2c3nmeb3wgf4ueJpBktM2aYTkfLrojr1kfZp4ReJyeorkPYboVvZjapU3TNNsZke6Poq9U8g6O2Y3Sac6N0K6QoG4WMMxPmUziNDw/kisspng-california-style-pizza-sicilian-pizza-italian-cuis-pizza-5a6fbbd24acf77.9638935215172720183064.png',
            price: 2.3,
          ),
          Product(
            name: 'Pineapple Pizza',
            ingredients: 'A pizza with peperoni, cheese and pineapple',
            imgUrl:
                'https://png2.cleanpng.com/sh/8ce4da768a5c8481b9f1fb55b9da7303/L0KzQYm3VsA1N5duj5H0aYP2gLBuTfNidJprhAR3aXGwg8XCjPUueJpBktM2c3nmeb3wgf4ueJpBktM2aHH6cbrwgf4ueJpBRdpqd3HsebL1TgBqgqtmRadrMUXldIm7UMAzbGc2RqcEOUa7RYm4UcUzQGI6SaY7OECzQIi1kP5o/kisspng-california-style-pizza-sicilian-pizza-hawaiian-piz-hawaiian-pizza-5b15bd84002d61.5996858115281514280007.png',
            price: 2.5,
          ),
          Product(
            name: 'Veg Cheese Pizza',
            ingredients: 'A pizza with vegan cheese and various fruits',
            imgUrl:
                'https://png2.cleanpng.com/sh/b377d7675e23fa54d618b44cbc301fe1/L0KzQYi4UsE3N5ZpfZGAYUO3crXtWMlkbJVqUZCCN0K5RoS4U8E2OWQ5SKcENES5RIO8TwBvbz==/5a34bdf89cdde9.7726631315134059446425.png',
            price: 4,
          )
        ]),
  ];

  List<Company> get companies => _companies;

  set companies(List<Company> value) {
    _companies = value;
    notifyListeners();
  }

  List<Product> _cartProducts = [];

  List<Product> get cartProducts => _cartProducts;

  set cartProducts(List<Product> value) {
    _cartProducts = value;
    notifyListeners();
  }

  notifyListenersForChanges() {
    notifyListeners();
  }
}
