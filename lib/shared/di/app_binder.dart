import 'package:arthur_test/features/home/controller/home_controller.dart';
import 'package:arthur_test/features/home/repository/home_repository.dart';
import 'package:arthur_test/features/home/repository/home_repository_impl.dart';
import 'package:arthur_test/features/home/service/home_service.dart';
import 'package:arthur_test/features/home/service/home_service_impl.dart';
import 'package:arthur_test/features/home/usecase/home_calculate_variation_use_case.dart';
import 'package:arthur_test/features/home/usecase/home_calculate_variation_use_case_impl.dart';
import 'package:arthur_test/features/home/usecase/home_fetch_chart_use_case.dart';
import 'package:arthur_test/features/home/usecase/home_fetch_chart_use_case_impl.dart';
import 'package:get/get.dart';

class AppBinder extends Bindings {
  @override
  void dependencies() async {
    Get.put<HomeService>(HomeServiceImpl());
    Get.put<HomeRepository>(HomeRepositoryImpl(Get.find<HomeService>()));
    Get.put<HomeFetchChartUseCase>(
        HomeFetchChartUseCaseImpl(Get.find<HomeRepository>()));
    Get.put<HomeCalculateVariationUseCase>(HomeCalculateVariationUseCaseImpl());

    Get.put(HomeController(Get.find<HomeFetchChartUseCase>(),
        Get.find<HomeCalculateVariationUseCase>()));
  }
}
