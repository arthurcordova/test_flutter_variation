// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quote.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Quote _$QuoteFromJson(Map<String, dynamic> json) => Quote(
      open: (json['open'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
      close: (json['close'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
      high: (json['high'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
      low: (json['low'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
      volume: (json['volume'] as List<dynamic>?)?.map((e) => e as int).toList(),
    );

Map<String, dynamic> _$QuoteToJson(Quote instance) => <String, dynamic>{
      'high': instance.high,
      'low': instance.low,
      'close': instance.close,
      'open': instance.open,
      'volume': instance.volume,
    };
