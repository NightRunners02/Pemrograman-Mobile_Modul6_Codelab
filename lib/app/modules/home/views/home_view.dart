import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../components/appbar_view.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(titleText: "HomePage",),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("HOW TO USE THIS APPLICATION"),
          Text("1. Buka icon titik 3 di pojok kanan atas"),
          Text("2. Pilih Package yang ingin kalian liat sebagai outputnya"),
        ],
      ),
    );
  }
}


