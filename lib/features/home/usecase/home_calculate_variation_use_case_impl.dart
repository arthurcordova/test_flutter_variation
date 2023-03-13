import 'package:arthur_test/features/home/model/variation_item.dart';
import 'package:arthur_test/features/home/usecase/home_calculate_variation_use_case.dart';

class HomeCalculateVariationUseCaseImpl extends HomeCalculateVariationUseCase {
  @override
  Future<List<VariationItem>> execute(params) {
    final List<VariationItem> items = [];

    final dayOnePrice = params.first;

    params.asMap().forEach((key, value) {
      final currentPrice = params[key];
      if (key == 0) {
        items.add(VariationItem(currentPrice, 0, 0, key));
        return;
      }
      if (key >= 30) {
        return;
      }

      final d1Price = params[key - 1];
      final percentaceD1 = ((currentPrice - d1Price) / d1Price) * 100;
      final percentaceDayOne =
          ((currentPrice - (dayOnePrice ?? 0.0)) / (dayOnePrice ?? 0.0)) * 100;
      items.add(
          VariationItem(currentPrice, percentaceD1, percentaceDayOne, key));
    });
    return Future(() => items);
  }
}
