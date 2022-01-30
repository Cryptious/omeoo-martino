import 'package:flutter/material.dart';
import 'package:omeoo_martino/themes.dart';

class ProductTile extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: defaultMargin,
        right: defaultMargin,
        bottom: defaultMargin,
      ),
      child: Row(
        children: [
          Image.asset
        ],
      ),
    );
  }
}