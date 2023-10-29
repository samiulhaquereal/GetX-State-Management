import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dialog.dart';
import 'main.dart';
import 'snackbar.dart';

final List<GetPage> appPages = [
  GetPage(name: '/', page: () => MyApp()),
  GetPage(name: '/snackbar', page: () => SnacKbar()),
  GetPage(name: '/dialogpage/:someValue', page: () => MyHomePage2()),
];


class unknownRoutepage extends StatelessWidget {
   unknownRoutepage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(title: Text('GetX'),centerTitle: true,),
      body: Center(
        child: Text('Unknown Route Page')
      ),
    ));
  }
}
