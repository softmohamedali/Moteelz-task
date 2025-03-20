
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';


part 'country_model.freezed.dart';
part 'country_model.g.dart';



@freezed
class CountryModel with _$CountryModel {
  const factory CountryModel({
    required int id,
    required String name,
  }) = _CountryModel;

  factory CountryModel.fromJson(Map<String, dynamic> json) => _$CountryModelFromJson(json);
}
