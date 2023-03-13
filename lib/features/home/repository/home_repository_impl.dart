import 'package:arthur_test/features/home/model/result_dto.dart';
import 'package:arthur_test/features/home/repository/home_repository.dart';
import 'package:arthur_test/features/home/service/home_service.dart';

class HomeRepositoryImpl extends HomeRepository {
  final HomeService _service;

  HomeRepositoryImpl(this._service);

  @override
  Future<ResultDto> fetchChart(String name) async {
    final response = await _service.getFinancialAsset(name);
    return ResultDto.fromJson(response.data);
  }
}
