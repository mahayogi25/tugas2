import 'package:flutter/material.dart';
import 'detail.dart';


class MyHomePage extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
 return Scaffold(
  body: ListView(
    shrinkWrap: true,
    padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
    children: <Widget>[
      new GestureDetector(
        onTap: () {
          Navigator.of(context).push(new MaterialPageRoute( builder: (BuildContext context) => DetailProduk(
          name: "Ketut",
          description: "Hutang",
          price: 10000,
          ),
          ));
        },

        child: ProductBox(
          name: "Ketut",
          description: "Hutang",
          price: 10000,
          ),
      ),
      new GestureDetector(
        onTap: () {
          Navigator.of(context).push(new MaterialPageRoute(
          builder: (BuildContext context) => DetailProduk(
            name: "Kadek",
            description: "Bayar baju",
            price: 8000,
            ),
            ));
        },
        child: ProductBox(
          name: "Kadek",
            description: "Bayar baju",
            price: 8000,)),
      ],
    ));
    }}

class ProductBox extends StatelessWidget {
ProductBox({Key key, this.name, this.description, this.price,})
 : super(key: key);
 final String name;
 final String description;
 final int price;
 Widget build(BuildContext context) {
 return Container(
  padding: EdgeInsets.all(2),
  child: Card(
    child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      Expanded(
        child: Container(
          padding: EdgeInsets.all(5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
            Text(this.name, style: TextStyle(fontWeight: FontWeight.bold,)),
            Text(this.description),
            Text(
              "Price: " + this.price.toString(),
              style: TextStyle(color: Colors.red),
            ),
            Row(
              children: <Widget>[
            Row(
              children: <Widget>[
              ],
              )
              ],
            )
            ],
          )
        )
      )
    ]
    )
  )
 );
 }
}
