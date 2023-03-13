import 'package:arthur_test/features/home/model/result.dart';
import 'package:json_annotation/json_annotation.dart';

part 'chart.g.dart';

@JsonSerializable()
class Chart {
  List<Result>? result;
  String? error;

  Chart({this.result, this.error});

  factory Chart.fromJson(Map<String, dynamic> json) => _$ChartFromJson(json);

  Map<String, dynamic> toJson() => _$ChartToJson(this);
}
