import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';


part 'city.freezed.dart';
part 'city.g.dart';
@freezed
class City with _$City {
  const factory City({
    required int id,
    required int apiId,
    @JsonKey(name: 'api_id') required int apiIdAlternate,
    required int countryId,
    required String name,
    required String code,
  }) = _City;

  factory City.fromJson(Map<String, dynamic> json) => _$CityFromJson(json);
}