import 'package:flutter/material.dart';
import 'pages/loading.dart';
import 'pages/home.dart';
import 'pages/choose_location.dart';

void main() => runApp(
  MaterialApp(
    title: 'World Time',
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (context) => LoadingScreen(),
      '/home': (context) => Home(),
      '/location': (context) => ChooseLocation(),
    }
  )
);