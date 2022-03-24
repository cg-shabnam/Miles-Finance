import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:test_app/app/modules/home/views/glassmorphic_view.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      ///todo: temp body, modify later
      body: Center(
        child: ElevatedButton(onPressed: () { Get.to(GlassMorphicView()); }, child: const Text('Tap to see Magic'),)
      ),
    );
  }
}
