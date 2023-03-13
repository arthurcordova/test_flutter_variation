// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'result_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResultDto _$ResultDtoFromJson(Map<String, dynamic> json) => ResultDto(
      chart: json['chart'] == null
          ? null
          : Chart.fromJson(json['chart'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ResultDtoToJson(ResultDto instance) => <String, dynamic>{
      'chart': instance.chart,
    };
