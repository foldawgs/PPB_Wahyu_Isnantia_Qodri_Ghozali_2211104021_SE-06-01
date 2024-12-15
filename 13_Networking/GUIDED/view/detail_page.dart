import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:praktikum13/view_model/counter_controller.dart';

class DetailPage extends StatelessWidget {
    DetailPage({super.key, required this.title});

    final String title;
    final CounterController controller = Get.find();

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                centerTitle: true,
                title: const Text(
                    "Detail",
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
        );
    }
}
