import 'package:arthur_test/features/home/model/result_dto.dart';

abstract class HomeRepository {
  Future<ResultDto> fetchChart(String name);
}
