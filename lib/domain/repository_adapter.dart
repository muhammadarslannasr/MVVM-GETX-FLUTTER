import 'package:getx_code_structure/domain/cases_model.dart';

abstract class IHomeRepository {
  Future<CasesModel> getCases();
}