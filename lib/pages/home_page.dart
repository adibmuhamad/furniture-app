import 'package:flutter/material.dart';
import 'package:furniture_app/constants.dart';
import 'package:furniture_app/widgets/category_card.dart';
import 'package:furniture_app/widgets/product_card.dart';

import '../theme.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(
                left: 21,
                right: 21,
                top: 15
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Dream",
                              style: whiteTextStyle.copyWith(
                                  fontSize: 31,
                                  letterSpacing: 1.3
                              ),
                            ),
                            TextSpan(
                              text: "Home",
                              style: whiteBoldTextStyle.copyWith(
                                  fontSize: 31,
                                  letterSpacing: 1.3
                              ),
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      IconButton(
                          icon: Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                          onPressed: () {}),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  CategoryCard(categories),
                ],
              ),
            )

          ],
        ),
      )
    );
  }
}
