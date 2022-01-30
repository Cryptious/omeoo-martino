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
          ClipRRect(
            borderRadius: BorderRadius.circular(20
            
            ),
            child: Image.asset(
              'assets/baju_merah.jpg',
              width: 120,
              height: 120,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            width: 12,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 6,),
                Text(
                  'Baju Merah',
                  style: primaryTextStyle.copyWith(
                    fontSize: 16,fontWeight: semiBold,
                  ),
                ),
                SizedBox(height: 6,),
                Text(
                  'Rp. 10000',
                  style: priceTextStyle.copyWith(
                    fontWeight: medium,
                  ),  
                )
              ],
            ),
            ),
        ],
      ),
    );
  }
}