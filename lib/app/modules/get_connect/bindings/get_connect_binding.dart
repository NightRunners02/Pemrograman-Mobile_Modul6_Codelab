import 'package:get/get.dart';

import '../../../data/services/get_connect_controller.dart';


class GetConnectBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GetConnectController>(
      () => GetConnectController(),
    );
  }
}