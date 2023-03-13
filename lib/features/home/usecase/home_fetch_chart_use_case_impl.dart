import 'package:arthur_test/features/home/model/result_dto.dart';
import 'package:arthur_test/features/home/repository/home_repository.dart';
import 'package:arthur_test/features/home/usecase/home_fetch_chart_use_case.dart';

class HomeFetchChartUseCaseImpl extends HomeFetchChartUseCase {
  final HomeRepository _repository;

  HomeFetchChartUseCaseImpl(this._repository);

  @override
  Future<ResultDto> execute(dynamic params) async {
    return await _repository.fetchChart(params);
  }
}
