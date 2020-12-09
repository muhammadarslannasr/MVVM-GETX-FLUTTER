import 'package:get/get.dart';
import 'package:getx_code_structure/domain/cases_model.dart';
import 'package:getx_code_structure/domain/repository_adapter.dart';

class HomeController extends GetxController with StateMixin<CasesModel> {
  HomeController({this.homeRepository});

  /// inject repo abstraction dependency
  final IHomeRepository homeRepository;

  /// When the controller is initialized, make the http request
  @override
  void onInit() {
    super.onInit();
    // show loading on start, data on success
    // and error message on error with 0 boilerplate

    homeRepository.getCases().then((data) {
      change(data, status: RxStatus.success());
    }, onError: (err) {
      change(null, status: RxStatus.error(err.toString()));
    });



  }
}