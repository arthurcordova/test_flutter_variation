// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Result _$ResultFromJson(Map<String, dynamic> json) => Result(
      indicators: json['indicators'] == null
          ? null
          : Indicators.fromJson(json['indicators'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ResultToJson(Result instance) => <String, dynamic>{
      'indicators': instance.indicators,
    };
