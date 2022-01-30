import 'package:flutter/material.dart';
import 'package:omeoo_martino/themes.dart';

class ProfilePage extends StatelessWidget {

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
              Text('Nama....'),
              Text('Email....'),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
      return ListView(
        children: [
          header(),
        ],
      );
  }
}
