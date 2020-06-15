import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:fooddelivery/models/product.dart';
import 'package:provider/provider.dart';

import '../provider.dart';

class ProductScreen extends StatefulWidget {
  final Product product;

  ProductScreen({this.product});

  @override
  _ProductScreenState createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Product'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(10),
                child: Center(child: Image.network(widget.product.imgUrl)),
                width: 200,
                height: 200,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                              child: Text(
                            'Size',
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.left,
                          )),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 5, vertical: 5),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  width: 70,
                                  height: 50,
                                  child: RaisedButton(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        side: BorderSide(
                                            color: Colors.deepOrange,
                                            style: BorderStyle.solid)),
                                    onPressed: () {
                                      setState(() {
                                        if (widget.product.size == 'S') {
                                          widget.product.size = '';
                                        } else {
                                          widget.product.size = 'S';
                                        }
                                      });
                                    },
                                    child: Text(
                                      'S',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: (widget.product.size == 'S')
                                            ? Colors.white
                                            : Colors.deepOrange,
                                      ),
                                    ),
                                    color: (widget.product.size == 'S')
                                        ? Colors.deepOrange
                                        : Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  width: 70,
                                  height: 50,
                                  child: RaisedButton(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        side: BorderSide(
                                            color: Colors.deepOrange,
                                            style: BorderStyle.solid)),
                                    onPressed: () {
                                      setState(() {
                                        if (widget.product.size == 'M') {
                                          widget.product.size = '';
                                        } else {
                                          widget.product.size = 'M';
                                        }
                                      });
                                    },
                                    child: Text(
                                      'M',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: (widget.product.size == 'M')
                                            ? Colors.white
                                            : Colors.deepOrange,
                                      ),
                                    ),
                                    color: (widget.product.size == 'M')
                                        ? Colors.deepOrange
                                        : Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  width: 70,
                                  height: 50,
                                  child: RaisedButton(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        side: BorderSide(
                                            color: Colors.deepOrange,
                                            style: BorderStyle.solid)),
                                    onPressed: () {
                                      setState(() {
                                        if (widget.product.size == 'L') {
                                          widget.product.size = '';
                                        } else {
                                          widget.product.size = 'L';
                                        }
                                      });
                                    },
                                    child: Text(
                                      'L',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: (widget.product.size == 'L')
                                            ? Colors.white
                                            : Colors.deepOrange,
                                      ),
                                    ),
                                    color: (widget.product.size == 'L')
                                        ? Colors.deepOrange
                                        : Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Price',
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                              '${(widget.product.price * widget.product.quantityInCart).toStringAsFixed(2)} \$',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              //3buttons
              Expanded(
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(
                          color: Colors.deepOrange,
                          style: BorderStyle.solid,
                          width: 1.5)),
                  child: Container(
                    child: Row(
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: Text(
                                'Ingredients',
                                style: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Container(
                                  width: screenWidth - 38,
                                  child: Text(
                                    '${widget.product.ingredients}',
                                    style: TextStyle(fontSize: 15),
                                  )),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        IconButton(
                            icon: Icon(
                              Icons.add,
                              color: Colors.deepOrange,
                            ),
                            onPressed: () {
                              setState(() {
                                widget.product.quantityInCart++;
                              });
                            }),
                        Container(
                          color: Colors.deepOrange,
                          width: 40,
                          height: 40,
                          child: Center(
                              child: Text(
                            '${widget.product.quantityInCart}',
                            style: TextStyle(color: Colors.white),
                          )),
                        ),
                        IconButton(
                            icon: Icon(
                              Icons.remove,
                              color: Colors.deepOrange,
                            ),
                            onPressed: () {
                              setState(() {
                                if (widget.product.quantityInCart >= 1) {
                                  widget.product.quantityInCart--;
                                }
                              });
                            }),
                      ],
                    ),
                    Container(
                      height: 40,
                      child: RaisedButton.icon(
                        onPressed: widget.product.quantityInCart < 1
                            ? null
                            : () {
                                Provider.of<AppProvider>(context, listen: false)
                                    .cartProducts
                                    .add(widget.product);
                                Navigator.pop(context);
                              },
                        icon: Icon(
                          Icons.shopping_basket,
                          color: Colors.white,
                        ),
                        label: Text(
                          'ADD TO CART',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        color: Colors.deepOrange,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
