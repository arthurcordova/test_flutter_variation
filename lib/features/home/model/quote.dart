import 'package:json_annotation/json_annotation.dart';

part 'quote.g.dart';

@JsonSerializable()
class Quote {
  List<double>? high;
  List<double>? low;
  List<double>? close;
  List<double>? open;
  List<int>? volume;

  Quote({this.open, this.close, this.high, this.low, this.volume});

  factory Quote.fromJson(Map<String, dynamic> json) => _$QuoteFromJson(json);

  Map<String, dynamic> toJson() => _$QuoteToJson(this);
}
