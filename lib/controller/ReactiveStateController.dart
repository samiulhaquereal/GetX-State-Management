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

  /*void increment() async{
    SharedPreferences preferences = await SharedPreferences.getInstance();
    a.value = (preferences.getInt('counter1') ?? 0) + 1;
    b = (preferences.getInt('counter2') ?? 0) + 1;
    await preferences.setInt('counter1', a.value);
    await preferences.setInt('counter2', b);
    update();

  }
  void decrement() async{
    if(a.value>0 || b>0){
      SharedPreferences preferences = await SharedPreferences.getInstance();
      a.value = (preferences.getInt('counter1') ?? 0) - 1;
      b = (preferences.getInt('counter2') ?? 0) - 1;
      await preferences.setInt('counter1', a.value);
      await preferences.setInt('counter2', b);
      update();
    }else{
      SharedPreferences preferences = await SharedPreferences.getInstance();
      a.value = 0;
      b = 0;
      await preferences.setInt('counter1', a.value);
      await preferences.setInt('counter2', b);
    }
  }*/

}