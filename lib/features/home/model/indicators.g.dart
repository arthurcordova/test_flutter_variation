// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'indicators.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Indicators _$IndicatorsFromJson(Map<String, dynamic> json) => Indicators(
      quote: (json['quote'] as List<dynamic>?)
          ?.map((e) => Quote.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$IndicatorsToJson(Indicators instance) =>
    <String, dynamic>{
      'quote': instance.quote,
    };
