import 'package:arthur_test/features/home/model/quote.dart';
import 'package:json_annotation/json_annotation.dart';

part 'indicators.g.dart';

@JsonSerializable()
class Indicators {
  List<Quote>? quote;

  Indicators({this.quote});

  factory Indicators.fromJson(Map<String, dynamic> json) =>
      _$IndicatorsFromJson(json);

  Map<String, dynamic> toJson() => _$IndicatorsToJson(this);
}
