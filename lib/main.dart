import 'package:belanjabae/pages/cart_page.dart';
import 'package:belanjabae/pages/checkout_page.dart';
import 'package:belanjabae/pages/checkout_page_success.dart';
import 'package:belanjabae/pages/detail_chat_page.dart';
import 'package:belanjabae/pages/edit_profile_page.dart';
import 'package:belanjabae/pages/product_page.dart';
import 'package:belanjabae/providers/auth_provider.dart';
import 'package:flutter/material.dart';
import 'package:belanjabae/pages/home/main_page.dart';
import 'package:belanjabae/pages/sign_in_page.dart';
import 'package:belanjabae/pages/sign_up_page.dart';
import 'package:belanjabae/pages/splash_page.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  //  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AuthProvider(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => SplashPage(),
          '/sign-in': (context) => SignInPage(),
          '/sign-up': (context) => SignUpPage(),
          '/home': (context) => MainPage(),
          '/detail-chat': (context) => DetailChatPage(),
          '/edit-profile': (context) => EditProfilePage(),
          '/product': (context) => ProductPage(),
          '/cart': (context) => CartPage(),
          '/checkout': (context) => CheckoutPage(),
          '/checkoutsuccess': (context) => CheckoutSuccessPage()
        },
      ),
    );
  }
}
