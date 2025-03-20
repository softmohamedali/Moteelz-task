
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

import 'country_model/country_model.dart';


part 'country_response.freezed.dart';
part 'country_response.g.dart';

@freezed
class CountryResponse with _$CountryResponse {
  const factory CountryResponse({
    required List<CountryModel> data,
  }) = _CountryResponse;

  factory CountryResponse.fromJson(Map<String, dynamic> json) => _$CountryResponseFromJson(json);
}