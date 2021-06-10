import 'package:flutter/material.dart';
import 'package:furniture_app/theme.dart';
import 'package:furniture_app/widgets/info_dialog.dart';

class PageIndicator extends StatelessWidget {
  final int itemCount;

  PageIndicator(this.itemCount);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: itemCount,
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      itemBuilder: (ctx, id) {
        return Container(
          margin: EdgeInsets.symmetric(horizontal: 5),
          height: 9,
          width: 9,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: indicatorActive == id ? accentColor : satinColor,
          ),
        );
      },
    );
  }
}
