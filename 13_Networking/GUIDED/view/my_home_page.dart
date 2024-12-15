import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:praktikum13/view_model/counter_controller.dart';
import 'package:praktikum13/view/detail_page.dart';

class MyHomepage extends StatelessWidget {
  MyHomepage({super.key, required this.title});

  final String title;

  final CounterController controller = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Praktikum 13",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Obx(() {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Sisa Saldo ATM:",
                style: TextStyle(fontSize: 24),
              ),
              Text(
                "Rp.${controller.counter.value}.000.000",
                style: const TextStyle(fontSize: 24),
              ),
            ],
          );
        }),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: "increment",
            onPressed: () {
              controller.incrementController();
            },
            child: const Icon(Icons.add),
            backgroundColor: Colors.amber,
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            heroTag: "reset",
            onPressed: () {
              controller.resetController();
            },
            child: const Icon(Icons.refresh),
            backgroundColor: Colors.amber,
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            heroTag: "decrement",
            onPressed: () {
              controller.decrementController();
            },
            child: const Icon(Icons.minimize),
            backgroundColor: Colors.amber,
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            heroTag: "navigate",
            onPressed: () {
              Get.to(() => DetailPage(title: title));
            },
            child: const Icon(Icons.arrow_forward),
            backgroundColor: Colors.amber,
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            heroTag: "snackbar",
            onPressed: () {
              Get.snackbar("SnackBar", "Ini adalah SnackBar",
                  snackPosition: SnackPosition.TOP,
                  backgroundColor: Colors.white,
                  colorText: Colors.black);
            },
            child: const Icon(Icons.message),
            backgroundColor: Colors.amber,
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            heroTag: "dialog",
            onPressed: () {
              Get.defaultDialog(
                title: "Dialog",
                middleText: "Ini adalah Dialog",
                backgroundColor: Colors.white,
                titleStyle: const TextStyle(color: Colors.black),
                middleTextStyle: const TextStyle(color: Colors.black),
                confirm: ElevatedButton(
                  onPressed: () => Get.back(),
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.amber),
                  child: const Text("Tutup",
                      style: TextStyle(color: Colors.black)),
                ),
              );
            },
            child: const Icon(Icons.info),
            backgroundColor: Colors.amber,
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            heroTag: "bottomsheet",
            onPressed: () {
              Get.bottomSheet(
                Container(
                  color: Colors.white,
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text("Ini adalah BottomSheet",
                          style: TextStyle(color: Colors.black, fontSize: 18)),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () => Get.back(),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.amber),
                        child: const Text("Tutup",
                            style: TextStyle(color: Colors.black)),
                      )
                    ],
                  ),
                ),
              );
            },
            child: const Icon(Icons.menu),
            backgroundColor: Colors.amber,
          ),
        ],
      ),
    );
  }
}
