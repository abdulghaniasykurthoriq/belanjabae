import 'package:belanjabae/theme.dart';
import 'package:flutter/material.dart';

class EditProfilePage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    
    Widget header(){
      return AppBar(
        backgroundColor: backgroundColor1,
        elevation: 0,
        centerTitle: true,
        title: Text('Edit Profile'),
        leading: IconButton(
          icon: Icon(Icons.close), 
          onPressed: (){
            Navigator.pop(context);
          },),
          actions: [
            IconButton(
              onPressed: (){}, 
              icon: 
              Icon(
                Icons.check,
                color: primaryColor,
                )),
          ],
      );
    }

    Widget nameInput(){
      return Container(
        margin: EdgeInsets.only(
          top: defaultMargin
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Name',
              style: secondaryTextStyle.copyWith(fontSize: 13),
            ),
            TextFormField(
              style: primaryTextStyle,
              decoration: InputDecoration(
                hintText: 'Abdul Ghani',
                hintStyle: primaryTextStyle,
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: subtitleColor
                  )
                )
              ),
            )
          ],
        ),
      );
    }

    Widget usernameInput(){
      return Container(
        margin: EdgeInsets.only(
          top: defaultMargin
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'username',
              style: secondaryTextStyle.copyWith(fontSize: 13),
            ),
            TextFormField(
              style: primaryTextStyle,
              decoration: InputDecoration(
                hintText: '@agaaaaat',
                hintStyle: primaryTextStyle,
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: subtitleColor
                  )
                )
              ),
            )
          ],
        ),
      );
    }

    Widget emailInput(){
      return Container(
        margin: EdgeInsets.only(
          top: defaultMargin
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Email',
              style: secondaryTextStyle.copyWith(fontSize: 13),
            ),
            TextFormField(
              style: primaryTextStyle,
              decoration: InputDecoration(
                hintText: 'abdulghaniasykurthori@gmail.com',
                hintStyle: primaryTextStyle,
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: subtitleColor
                  )
                )
              ),
            )
          ],
        ),
      );
    }



    Widget content(){
      return Container(
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin
        ),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              margin: EdgeInsets.only(top: defaultMargin),
              decoration:BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/image_profile.png')
                )
              )
            ),
            nameInput(),
            usernameInput(),
            emailInput()
          ],
        ),
      );
    }
    
    return Scaffold(
      backgroundColor: backgroundColor3,
      appBar:PreferredSize(child: header(), preferredSize: Size.fromHeight(60)),
      body: content(),
      resizeToAvoidBottomInset: false,
    );
  }
}













