import 'package:flutter/material.dart';

class Rating {
  Widget rating(double rating) {
    List<Widget> stars = [];

    for(int i = 1; i <= 5; i++){
      if(rating > i){
        stars.add(Icon(Icons.star, size: 23, color: Colors.yellow,),);
      } else {
        stars.add(Icon(Icons.star_border,color: Colors.yellow, size: 23),);
      }
    }
    return Row(
      children: stars, mainAxisAlignment: MainAxisAlignment.center,
    );
  }
}