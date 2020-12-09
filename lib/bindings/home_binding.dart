import 'package:get/get.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:getx_code_structure/controllers/home_controller.dart';
import 'package:getx_code_structure/data/home_api_provider.dart';
import 'package:getx_code_structure/data/home_repository.dart';
import 'package:getx_code_structure/domain/repository_adapter.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IHomeProvider>(() => HomeProvider()); // Lazy instance "IHomeProvider" created [false]
    Get.lazyPut<IHomeRepository>(() => HomeRepository(provider: Get.find())); // Lazy instance "IHomeRepository" created [false]
    Get.lazyPut(() => HomeController(homeRepository: Get.find())); // Lazy instance "HomeController" created [false]
  }
}