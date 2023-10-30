import 'package:get/get.dart';

class ReactiveStateController extends GetxController{

  RxInt a = 0.obs;
  int b = 0;

  @override
  void onInit() {
    //ever(a, (_) => print('${a} : ${b}'));
    //everAll([a], (_) => print('${a} : ${b}'));
    //once(a, (_) => print('${a} : ${b}'));
    //debounce(a, (_) => print('${a} : ${b}'),time: Duration(seconds: 1)); //Search
    //interval(a,(_)=> print('${a} : ${b}'),time: Duration(seconds: 3));
    super.onInit();
  }

  void increment(){
    a.value++;
    b++;
    update();
  }
  void decrement(){
    if(a.value>0 || b>0){
      a.value--;
      b--;
      update();
    }else{
      a.value = 0;
      b = 0;
    }
  }

}