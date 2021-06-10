import 'package:flutter/material.dart';
import 'package:furniture_app/constants.dart';
import 'package:furniture_app/theme.dart';
import 'package:furniture_app/widgets/product_card.dart';

class CategoryCard extends StatefulWidget {

  List<String> categories;

  CategoryCard(this.categories);

  @override
  _CategoryCardState createState() => _CategoryCardState();
}

class _CategoryCardState extends State<CategoryCard> {
  int active = 0;

  @override
  Widget build(BuildContext context) {

    return Container(
      margin: EdgeInsets.all(15),
      height: 600,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List<Widget>.generate(
              widget.categories.length, (i) {
              return InkWell(
                onTap: () {
                  setState(() {
                    active = i;
                  });
                },
                child: Column(
                  children: [
                    Text(
                      widget.categories[i],
                      style: whiteTextStyle.copyWith(
                          fontWeight:
                          active == i ? FontWeight.bold : FontWeight.w100,
                          fontSize: 17),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    active == i
                        ? Container(
                      width: 7,
                      height: 7,
                      decoration: BoxDecoration(
                        color: accentColor,
                        shape: BoxShape.circle,
                      ),
                    )
                        : Container(
                      height: 7,
                      width: 7,
                    ),
                  ],
                ),
              );
            },
            ),
          ),
          (getProduct(active).length > 0) ?
          Spacer() :
          SizedBox(
            height: 200,
          ),
          (getProduct(active).length > 0) ?
          Flexible(
            flex: 7,
            child: PageView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: getProduct(active).length,
              itemBuilder: (ctx, id) {
                return ProductCard(id: id, products: getProduct(active),);
              },
            ),
          ) :
          Text(
            'Sorry, the item you are looking for is out of stock',
            style: whiteTextStyle.copyWith(
              fontSize: 17
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  getProduct(int active) {
    List<Map<String, dynamic>> temp = [];
    for (var i = 0; i < products.length; i++) {
      if (products[i]["category"] == active) {
        temp.add(products[i]);
      }
    }

    return temp;
  }
}
