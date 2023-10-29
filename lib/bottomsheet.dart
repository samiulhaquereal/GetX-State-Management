import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomSheetTheme extends StatelessWidget {
  const BottomSheetTheme({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text('BottomSheet & Theme'),centerTitle: true,),
        body: Center(
          child: ElevatedButton(
            child: Text('Click'),
            onPressed: (){
              Get.bottomSheet(
                Container(
                  child: Wrap(
                    children: [
                      ListTile(
                        leading: Icon(Icons.sunny),
                        title: Text('Light Mode'),
                        onTap: ()=>Get.changeTheme(ThemeData.light()),
                      ),
                      ListTile(
                        leading: Icon(Icons.dark_mode),
                        title: Text('Dark Mode'),
                        onTap: ()=>Get.changeTheme(ThemeData.dark()),
                      )
                    ],
                  ),
                ),
                //barrierColor: Colors.green.shade200
                backgroundColor: Colors.white,
                isDismissible: true,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: BorderSide(
                    color: Colors.white,
                    style: BorderStyle.solid,
                    width: 2
                  ),
                ),
                enableDrag: true
              );
            },
          )
          ,
        ),
      ),
    );
  }
}
