import 'package:flutter/material.dart';
import 'package:furniture_app/constants.dart';
import 'package:furniture_app/theme.dart';
import 'package:furniture_app/widgets/custom_dialog.dart';
import 'package:furniture_app/widgets/info_dialog.dart';

class DetailPage extends StatelessWidget {

  Map<String, dynamic> products;

  DetailPage(this.products);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: satinColor,
        body: Column(
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(
                  vertical: 25
                ),
                child: Stack(
                  children: [
                    Column(
                      children: [
                        Expanded(
                            child: Image.network(
                              products["pictureLink"],
                            )
                        ),
                        SizedBox(
                            height: 11
                        ),
                      ],
                    ),
                    Positioned(
                      child: Row(
                        children: [
                          IconButton(
                            icon: Icon(Icons.arrow_back),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                          Spacer(),
                          IconButton(
                            icon: Icon(Icons.favorite),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: Icon(Icons.shopping_cart),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(25),
                    topLeft: Radius.circular(25),
                  ),
                  color: backgroundColor,
                ),
                child: Column(
                  children: [
                    Expanded(
                      child: Container(
                        padding:
                        EdgeInsets.only(
                            top: 15,
                            left: 15,
                            right: 15.0
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: Container(
                                width: MediaQuery.of(context).size.width / 5,
                                height: 5,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: whiteColor,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(products["productName"],
                                        style: whiteTextStyle.copyWith(
                                          fontSize: 17
                                        )),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(products["price"],
                                        style: whiteBoldTextStyle.copyWith(
                                          fontSize: 17
                                        )
                                    ),
                                  ],
                                ),
                                Spacer(),
                                (products["arObject"] != '') ?
                                Container(
                                  padding: EdgeInsets.all(15),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: accentColor,
                                  ),
                                  child: InkWell(
                                    onTap: () {
                                      indicatorActive = 0;
                                      showDialog(context: context,
                                          builder: (BuildContext context) {
                                            return InfoDialog(products["productName"], products["arObject"]);
                                          });
                                    },
                                    child: Image.asset(
                                      'assets/images/ar.png',
                                      height: 30,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ) : SizedBox(),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: List<Widget>.generate(
                                4,(f) {
                                return Expanded(
                                  child: Container(
                                    margin: EdgeInsets.all(5),
                                    padding: EdgeInsets.all(9),
                                    decoration: BoxDecoration(
                                      color: satinColor,
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Column(
                                      children: [
                                        icons[f],
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          products["details"][f]["value"],
                                          style: blackTextStyle.copyWith(
                                            fontSize: 15
                                          ),
                                        ),
                                        Text(
                                          products["details"][f]["type"],
                                          style: blackTextStyle.copyWith(
                                              fontSize: 12
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Expanded(
                              child: Text(
                                "Lorem ipsum dolor sit amet consectetur adipisicing elit. A saepe velit soluta molestiae tempore accusamus voluptates repudiandae explicabo voluptas vitae non illo rerum aperiam earum et ullam, enim laudantium facere!",
                                style: whiteTextStyle.copyWith(
                                  fontSize: 12
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: 15,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Spacer(),
                          Material(
                            color: Colors.transparent,
                            child: InkWell(
                              onTap: () {
                                showDialog(context: context,
                                    builder: (BuildContext context) {
                                      return CustomDialog(
                                        title: "Checkout Successful!",
                                        descriptions: "Thank you for purchasing our items. Hopefully our service is satisfactory.",
                                        text: "See you",
                                      );
                                    });
                              },
                              child: Container(
                                padding: EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                  color: accentColor,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30),
                                  ),
                                ),
                                child: Text(
                                  'Checkout Now',
                                  style: whiteTextStyle.copyWith(
                                    fontSize: 14
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
