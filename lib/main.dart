import 'package:flutter/material.dart';
import 'package:stardew_rehber/giris.dart';

void main() {
  runApp(AnaUygulama());
}


class AnaUygulama extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Giris()
    );
  }
}


