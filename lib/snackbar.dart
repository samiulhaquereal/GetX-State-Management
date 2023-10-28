import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SnacKbar extends StatelessWidget {
  const SnacKbar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(title: Text('GetX'),centerTitle: true,),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            Get.snackbar('Notice', 'All okay');
          },
          child: Text('Snackbar'),
        )
      ),
    )
    );
  }
}
