import 'package:belanjabae/theme.dart';
import 'package:belanjabae/widgets/wishlist_card.dart';
import 'package:flutter/material.dart';

class WishlistPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Widget header(){
      return AppBar(
        backgroundColor: backgroundColor1,
        centerTitle: true,
        title: Text('Favorite Shoes'),
        elevation: 0,
        automaticallyImplyLeading: false,
      );
    }
    Widget emptyWishList(){
      return Expanded(
        child: Container(
          width: double.infinity,
          color: backgroundColor3,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/image_wishlist.png',
                width: 74,
              ),
              SizedBox(height: 23),
              Text(
                'You don\'t have a dream shoes?',
                style: primaryTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: medium
                ),
              ),
              SizedBox(height: 12),
              Text('Let\'s find your favorite shoes'
                  ,style: secondaryTextStyle,
              ),
              SizedBox(height: 20),
              Container(
                height: 44,
                child: TextButton(
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 24
                    ),
                    backgroundColor: primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)
                    )
                  ),
                  onPressed: (){}, 
                  child: Text('Explore Store',style: primaryTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium
                  ),)))
            ],
          ),
        ),
      );
    }
    Widget content(){
      return Expanded(
        child: Container(
          color: backgroundColor3,
          child: ListView(
            padding: EdgeInsets.symmetric(
              horizontal: defaultMargin
            ),
            children: [
              WishlistCard(),
              WishlistCard(),
              WishlistCard(),
            ],
          ),
        )
      );
    }


    return Column(
      children: [
        header(),
        // emptyWishList()
        content()
      ],
    );
  }
}