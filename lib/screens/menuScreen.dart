import 'package:flutter/material.dart';
import 'package:fooddelivery/models/company.dart';
import 'package:fooddelivery/models/product.dart';

class MenuScreen extends StatefulWidget {
  final Company company;

  MenuScreen({this.company});

  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          widget.company.name,
          style: TextStyle(color: Colors.black, fontSize: 33),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Image.network(
              widget.company.imgUrl,
              height: 120,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                'Company Products',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            Divider(
              color: Colors.grey,
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: widget.company.products.length,
                  itemBuilder: (BuildContext context, int index) {
                    Product product = widget.company.products[index];
                    double screenWidth = MediaQuery.of(context).size.width;
                    double screenHeight = MediaQuery.of(context).size.height;
                    return Container(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                        child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                                side: BorderSide(
                                    color: Colors.deepOrange,
                                    style: BorderStyle.solid,
                                    width: 1.5)),
                            child: InkWell(
                              onTap: () {
                                Navigator.pushNamed(context, '/productScreen',
                                    arguments: product);
                              },
                              child: Container(
                                height: screenHeight * 0.175,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Expanded(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Container(
                                            padding: const EdgeInsets.fromLTRB(
                                                5, 5, 5, 5),
                                            child:
                                                Image.network(product.imgUrl),
                                            width: 100,
                                            height: 100,
                                          ),
                                          Expanded(
                                            child: Container(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 15),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text(
                                                    ' ${product.name}',
                                                    style: TextStyle(
                                                        fontSize: 25,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  SizedBox(
                                                    height: 10,
                                                  ),
                                                  Text(
                                                    '${product.ingredients}',
                                                    textAlign: TextAlign.left,
                                                    maxLines: 4,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                          Container(
                                            child: IconButton(
                                              icon: Icon(
                                                Icons.shopping_basket,
                                                size: 30,
                                                color: Colors.deepOrange,
                                              ),
                                              onPressed: () {},
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
