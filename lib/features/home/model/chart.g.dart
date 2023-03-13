// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chart.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Chart _$ChartFromJson(Map<String, dynamic> json) => Chart(
      result: (json['result'] as List<dynamic>?)
          ?.map((e) => Result.fromJson(e as Map<String, dynamic>))
          .toList(),
      error: json['error'] as String?,
    );

Map<String, dynamic> _$ChartToJson(Chart instance) => <String, dynamic>{
      'result': instance.result,
      'error': instance.error,
    };
