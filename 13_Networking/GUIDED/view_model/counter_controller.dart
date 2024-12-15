import 'package:get/get.dart';

class CounterController extends GetxController {
  var counter = 0.obs;

  void incrementController() => counter++;

  void resetController() => counter.value = 0;

  void decrementController() => counter--;
}