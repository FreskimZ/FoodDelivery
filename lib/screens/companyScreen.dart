import 'package:flutter/material.dart';
import 'package:fooddelivery/models/company.dart';
import 'package:fooddelivery/provider.dart';
import 'package:fooddelivery/utilities/rating.dart';
import 'package:provider/provider.dart';

class CompanyScreen extends StatefulWidget {
  @override
  _CompanyScreenState createState() => _CompanyScreenState();
}

class _CompanyScreenState extends State<CompanyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Companies'),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.favorite),
              onPressed: () {
                Navigator.pushNamed(context, '/favoriteScreen');
              }),
          IconButton(
              icon: Icon(Icons.shopping_basket),
              onPressed: () {
                Navigator.pushNamed(context, '/cartScreen');
              })
        ],
      ),
      body: ListView.builder(
          itemCount: Provider.of<AppProvider>(context).companies.length,
          itemBuilder: (BuildContext context, int index) {
            double screenWidth = MediaQuery.of(context).size.width;
            double screenHeight = MediaQuery.of(context).size.height;

            Company company =
                Provider.of<AppProvider>(context).companies[index];

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
                      Navigator.pushNamed(context, '/menuScreen',
                          arguments: company);
                    },
                    child: Container(
                      height: screenHeight * 0.20,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                padding: const EdgeInsets.fromLTRB(8, 8, 5, 5),
                                child: Image.network(company.imgUrl),
                                width: 100,
                                height: 100,
                              ),
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 15, vertical: 5),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        ' ${company.name}',
                                        style: TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        '${company.description}',
                                        textAlign: TextAlign.left,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                          'Delivery fee: ${company.deliveryFee}\$'),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        '${company.workingTime}',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              IconButton(
                                  icon: Icon(
                                    company.favorite
                                        ? Icons.favorite
                                        : Icons.favorite_border,
                                    color: Colors.red,
                                  ),
                                  onPressed: () {
                                    company.like();
                                    setState(() {});
                                  }),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: Rating().rating(company.rating),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
