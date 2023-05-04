import 'package:flutter/material.dart';
import 'package:hotstar_app/screen/provider/home_provider.dart';
import 'package:hotstar_app/screen/provider/second_provider.dart';
import 'package:hotstar_app/screen/view/home_screen.dart';
import 'package:hotstar_app/screen/view/second_screen.dart';
import 'package:provider/provider.dart';

void main()
{
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Homeprovider(),),
        ChangeNotifierProvider(create: (context) => SecondProvider(),),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/' :  (context) => Homescreen(),
          'second' :  (context) => secondscreen(),
        },
      ),
    ),
  );
}