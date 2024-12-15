import 'package:get/get.dart';

import '../../../data/services/dio_controller.dart';

class DioBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DioController>(
      () => DioController(),
    );
  }
}