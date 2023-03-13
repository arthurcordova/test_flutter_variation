import 'package:arthur_test/features/home/service/home_service.dart';
import 'package:arthur_test/shared/service/base_service.dart';
import 'package:dio/dio.dart';

class HomeServiceImpl extends HomeService with BaseService {
  @override
  Future<Response> getFinancialAsset(String parameter) async {
    return await dio.get(path(parameter));
  }
}
