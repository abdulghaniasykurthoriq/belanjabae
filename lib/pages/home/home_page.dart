
import 'package:belanjabae/widgets/product_tile.dart';
import 'package:flutter/material.dart';
import 'package:belanjabae/theme.dart';
import 'package:belanjabae/widgets/product_card.dart';

class HomePage extends StatelessWidget {

  Widget header(){
    return Container(
      margin: EdgeInsets.only(
        top: defaultMargin,
        left: defaultMargin,
        right: defaultMargin
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                  Text(
                    'hello, Alex',
                    style: primaryTextStyle.copyWith(
                      fontSize: 24,
                      fontWeight: semiBold
                    ),
                  ),
                  Text(
                    '@agaaaat',
                    style: subtitleTextStyle,
                  )
              ],
            ),
          ),
          Container(
            width: 54,
            height: 54,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('assets/image_profile.png')
              )
            ),
          )
            
        ],
      )
    );
  }
  Widget categories(){
    return Container(
      margin: EdgeInsets.only(
        top: defaultMargin
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SizedBox(width: defaultMargin,),
            Container(
              margin: EdgeInsets.only(right: 16),
              padding: EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 10
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: subtitleColor
                ),
                color: primaryColor
              ),
              child: 
                Text(
                  'All shoes',
                  style: primaryTextStyle.copyWith(
                    fontSize: 13,
                    fontWeight: medium
                  ),
                ),
            ),
            Container(
              margin: EdgeInsets.only(right: 16),
              padding: EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 10
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: subtitleColor
                ),
                color: transparentColor
              ),
              child: 
                Text(
                  'Running',
                  style: subtitleTextStyle.copyWith(
                    fontSize: 13,
                    fontWeight: medium
                  ),
                ),
            ),
             Container(
              margin: EdgeInsets.only(right: 16),
              padding: EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 10
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: subtitleColor
                ),
                color: transparentColor
              ),
              child: 
                Text(
                  'Training',
                  style: subtitleTextStyle.copyWith(
                    fontSize: 13,
                    fontWeight: medium
                  ),
                ),
                
            ),
             Container(
              margin: EdgeInsets.only(right: 16),
              padding: EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 10
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: subtitleColor
                ),
                color: transparentColor
              ),
              child: 
                Text(
                  'Basketball',
                  style: subtitleTextStyle.copyWith(
                    fontSize: 13,
                    fontWeight: medium
                  ),
                ),
                
            ),
             Container(
              margin: EdgeInsets.only(right: 16),
              padding: EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 10
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: subtitleColor
                ),
                color: transparentColor
              ),
              child: 
                Text(
                  'Hiking',
                  style: subtitleTextStyle.copyWith(
                    fontSize: 13,
                    fontWeight: medium
                  ),
                ),
            ),
          ],
        ),
      ),
    );
  }
  Widget popularProductsTitle(){
    return Container(
      margin: EdgeInsets.only(
        top: defaultMargin,
        left: defaultMargin,
        right: defaultMargin
      ),
      child: 
        Text(
          'Popular Products',
          style: primaryTextStyle.copyWith(
            fontSize:22,
            fontWeight: semiBold
          ),
        )
      ,
    );
  }
  Widget popularProducts(){
    return Container(
      margin: EdgeInsets.only(top: 14),
      child: SingleChildScrollView(
        scrollDirection:Axis.horizontal,
        child: Row(
          children: [
            SizedBox(width: defaultMargin),
            Row(
              children: [
                ProductCard(),
                ProductCard(),
                ProductCard(),
                ProductCard(),
              ],
            )
          ],
        ),
      ),
    );
  }
  Widget newArrivalsTitle(){
    return Container(
      margin: EdgeInsets.only(
        top: defaultMargin,
        left: defaultMargin,
        right: defaultMargin
      ),
      child: 
        Text(
          'New Arrivals',
          style: primaryTextStyle.copyWith(
            fontSize:22,
            fontWeight: semiBold
          ),
        )
      ,
    );
  }
  Widget newArrivals(){
    return Container(
      margin: EdgeInsets.only(top: 14),
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
        categories(),
        popularProductsTitle(),
        popularProducts(),
        newArrivalsTitle(),
        newArrivals()
      ],
    );
  }
}