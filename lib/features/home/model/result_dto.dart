import 'package:arthur_test/features/home/model/chart.dart';
import 'package:json_annotation/json_annotation.dart';

part 'result_dto.g.dart';

@JsonSerializable()
class ResultDto {
  Chart? chart;

  ResultDto({this.chart});

  factory ResultDto.fromJson(Map<String, dynamic> json) =>
      _$ResultDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ResultDtoToJson(this);
}
