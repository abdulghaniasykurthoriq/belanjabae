import 'package:belanjabae/theme.dart';
import 'package:flutter/material.dart';


class ChatTile extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, '/detail-chat');
      },
      child: Container(
        margin: EdgeInsets.only(top: 33),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  'assets/image_shop_logo.png',
                  width: 54,
                ),
                SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Shoe Store',
                      style: primaryTextStyle.copyWith(
                        fontSize: 15,
                      )
                      ),
                      Text('Good night, This is on...',
                      style: secondaryTextStyle.copyWith(
                        fontSize: 14,
                        fontWeight: light
                      ),
                      overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                Text(
                  'Now',
                  style: secondaryTextStyle.copyWith(
                    fontSize: 10
                  ),
                ),
                
              ],
            ),
            SizedBox(height: 12),
            Divider(
                thickness: 2,
                color: Color(0xff2B2939),
            )
          ],
        ),
      ),
    );
  }
}