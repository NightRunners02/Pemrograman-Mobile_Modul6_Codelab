import 'package:get/get.dart';

import '../../../data/services/http_controller.dart';


class HttpBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HttpController>(
      () => HttpController(),
    );
  }
}