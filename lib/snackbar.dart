import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SnacKbar extends StatelessWidget {
  const SnacKbar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(title: Text('GetX'), centerTitle: true,),
      body: Center(
          child: ElevatedButton(
            onPressed: () {
              Get.snackbar(
                  'Notice',
                  'All okay',
                  snackPosition:SnackPosition.TOP,
                //titleText: Text('Notice'),
               // messageText: Text('Notice'),
                colorText: Colors.redAccent,
                backgroundColor: Colors.black,
                borderRadius: 30,
                margin: EdgeInsets.all(10),
                //maxWidth: 200,
                //animationDuration: Duration(seconds: 1),
                //backgroundGradient: LinearGradient(colors: [Colors.black,Colors.grey]),
                //borderWidth: 4,
                //borderColor: Colors.blueAccent,
                /*boxShadows: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(4,4),
                    spreadRadius: 20,
                    blurRadius: 8
                  )
                ]*/
                isDismissible: true,
                forwardAnimationCurve: Curves.bounceIn,
                duration: Duration(seconds: 3),
                icon: Icon(
                  Icons.sell,
                  color: Colors.white,
                ),
                shouldIconPulse: false,
                mainButton: TextButton(onPressed: (){

                }, child: Text('Click')),
                onTap: (value){

                },
                overlayBlur: 4,
                //overlayColor: Colors.grey

              );
            },
            child: Text('Snackbar'),
          )
      ),
    )
    );
  }
}
