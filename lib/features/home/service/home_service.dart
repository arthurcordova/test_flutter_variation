import 'package:dio/dio.dart';

abstract class HomeService {
  Future<Response> getFinancialAsset(String parameter);
}
