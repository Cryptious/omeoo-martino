import 'package:flutter/material.dart';
import 'package:omeoo_martino/models/user_model.dart';
import 'package:omeoo_martino/pages/widgets/product_tile.dart';
import 'package:omeoo_martino/providers/auth_provider.dart';
import 'package:omeoo_martino/themes.dart';
import 'package:provider/provider.dart';
class ProfilePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    AuthProvider authProvider = Provider.of<AuthProvider>(context);

    UserModel user = authProvider.user;

    Widget header() {
      return Container(
        margin: EdgeInsets.only(
            top: defaultMargin, left: defaultMargin, right: defaultMargin),
        child: Row(
          children: [
            Column(
              children: [
                Text(
                  'Hallo, ${user.name}',
                  style: primaryTextStyle.copyWith(
                    fontSize: 24,
                    fontWeight: semiBold,
                  ),
                ),
                Text('Nama: ${user.name}'),
                Text('Email: ${user.email}'),
              ],
            ),
          ],
        ),
      );
    }
      return ListView(
        children: [
          header(),
        ],
      );
  }
}
