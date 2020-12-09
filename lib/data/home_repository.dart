import 'package:getx_code_structure/data/home_api_provider.dart';
import 'package:getx_code_structure/domain/cases_model.dart';
import 'package:getx_code_structure/domain/repository_adapter.dart';

class HomeRepository implements IHomeRepository {
  HomeRepository({this.provider});
  final IHomeProvider provider;

  @override
  Future<CasesModel> getCases() async {
    final cases = await provider.getCases("/summary");
    if (cases.status.hasError) {
      return Future.error(cases.statusText);
    } else {
      return cases.body;
    }
  }
}