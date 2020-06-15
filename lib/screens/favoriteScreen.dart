import 'package:flutter/material.dart';
import 'package:fooddelivery/models/company.dart';
import 'package:fooddelivery/provider.dart';
import 'package:fooddelivery/utilities/rating.dart';
import 'package:provider/provider.dart';

class FavoriteScreen extends StatefulWidget {
  @override
  _FavoriteScreenState createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  List<Company> filteredList = [];

  List<Company> favorite(List<Company> companies) {
    return companies
        .where((Company company) => company.favorite == true)
        .toList();
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      filteredList =
          favorite(Provider.of<AppProvider>(context, listen: false).companies);
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Favorite'),
      ),
      body: ListView.builder(
          itemCount: filteredList.length,
          itemBuilder: (BuildContext context, int index) {
            double screenWidth = MediaQuery.of(context).size.width;
            double screenHeight = MediaQuery.of(context).size.height;

            Company company = filteredList[index];
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
                      Navigator.pushNamed(context, '/menuScreen');
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
                                padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
                                child: Image.network(company.imgUrl),
                                width: 100,
                                height: 100,
                              ),
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.symmetric(horizontal: 15),
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
                                    filteredList = favorite(
                                        Provider.of<AppProvider>(context,
                                                listen: false)
                                            .companies);

                                    Provider.of<AppProvider>(context,
                                            listen: false)
                                        .notifyListenersForChanges();
                                    setState(() {});
                                  }),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 4),
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
