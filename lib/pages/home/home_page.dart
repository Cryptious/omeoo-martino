import 'package:flutter/material.dart';
import 'package:omeoo_martino/pages/widgets/product_tile.dart';
import 'package:omeoo_martino/themes.dart';

class HomePage extends StatelessWidget {
  Widget header() {
    return Container(
      margin: EdgeInsets.only(
          top: defaultMargin, left: defaultMargin, right: defaultMargin),
      child: Row(
        children: [
          Column(
            children: [
              Text(
                'Hallo, Alex',
                style: primaryTextStyle.copyWith(
                  fontSize: 24,
                  fontWeight: semiBold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget newProductsTitles() {
    return Container(
      margin: EdgeInsets.only(
        top: defaultMargin,
        left: defaultMargin,
        right: defaultMargin,
      ),
      child: Text(
        'New Products',
        style: primaryTextStyle.copyWith(
          fontSize: 22,
          fontWeight: semiBold,
        ),
      ),
    );
  }

  Widget newProducts() {
    return Container(
      margin: EdgeInsets.only(
        top: 14,
      ),
      child: Column(
        children: [
          ProductTile(),
          ProductTile(),
          ProductTile(),
          ProductTile(),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        header(),
        newProductsTitles(),
        newProducts(),
      ],
    );
  }
}
