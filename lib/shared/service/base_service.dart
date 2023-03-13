import 'package:dio/dio.dart';

abstract class BaseService {
  final dio = Dio();

  final _baseUrl = 'https://query2.finance.yahoo.com';
  final _baseProject = '/v8/finance/chart';

  String path(String path) {
    return '$_baseUrl/$_baseProject/$path';
  }
}
