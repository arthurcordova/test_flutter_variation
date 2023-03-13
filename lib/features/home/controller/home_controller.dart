import 'package:arthur_test/features/home/model/result_dto.dart';
import 'package:arthur_test/features/home/model/variation_item.dart';
import 'package:arthur_test/features/home/usecase/home_calculate_variation_use_case.dart';
import 'package:arthur_test/features/home/usecase/home_fetch_chart_use_case.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final HomeFetchChartUseCase _fetchChartUseCase;
  final HomeCalculateVariationUseCase _homeCalculateVariationUseCase;

  final RxList<VariationItem> _variationItems = RxList.empty();
  RxList<VariationItem> get variationItems => _variationItems;

  HomeController(this._fetchChartUseCase, this._homeCalculateVariationUseCase);

  fetchData() async {
    handleResponse(await _fetchChartUseCase.execute('PETR4.SA'));
  }

  handleResponse(ResultDto result) {
    result.chart?.result?.forEach((element) {
      element.indicators?.quote?.forEach((element) async {
        if (element.open != null) {
          _variationItems.value =
              await _homeCalculateVariationUseCase.execute(element.open);
        }
      });
    });
  }
}
