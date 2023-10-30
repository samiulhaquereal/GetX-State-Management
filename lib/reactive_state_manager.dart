import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controller/ReactiveStateController.dart';

class ReactiveState extends StatelessWidget {

  final ReactiveStateController controller = Get.put(ReactiveStateController());

  @override
  Widget build(BuildContext context) {
    //Get.putAsync<ReactiveStateController>(() async => ReactiveStateController());
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(title: Text('${Get.arguments}'),),
            body: Center(
              child: Obx(
                  ()=> Column(
                  children: [
                     Text(controller.a.value.toString(),style: TextStyle(fontSize: 50),),
                     Text(controller.b.toString(),style: TextStyle(fontSize: 50),),
                  ],
                ),
              ),
      ),
          floatingActionButton: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
            FloatingActionButton(
            onPressed: () {
              controller.increment();
            },
              child: Icon(Icons.add),
          ),
            SizedBox(width: 15,),
            FloatingActionButton(
              onPressed: () {
              controller.decrement();
              },
              child: Icon(Icons.minimize),
          ),
        ],
      ),
    )
    );
  }
}
