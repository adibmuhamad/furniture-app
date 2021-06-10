import 'package:flutter/material.dart';
import 'package:furniture_app/pages/detail_page.dart';

import '../theme.dart';

class ProductCard extends StatelessWidget {

  final int id;
  final List<Map<String, dynamic>> products;

  const ProductCard({required this.id, required this.products});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) => DetailPage(products[id]),
        ),
        );
      },
      child: Container(
        margin: EdgeInsets.all(15),
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Stack(
              children: [
                  Container(
                  padding: EdgeInsets.all(5),
                  margin: EdgeInsets.all(15),
                  child: Image.network(
                    products[id]["pictureLink"],
                    height: 300,
                    fit: BoxFit.fill,
                  ),
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                ],
              ),
            ),
            Text(
              products[id]["productName"],
              style: greyTextStyle.copyWith(
                  fontSize: 19),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              products[id]["price"],
              style: whiteBoldTextStyle.copyWith(
                  fontSize: 19),
            ),
          ],
        ),
      )
    );
  }
}
