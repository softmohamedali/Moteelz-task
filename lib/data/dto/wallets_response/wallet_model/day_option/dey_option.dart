import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';


part 'dey_option.freezed.dart';
part 'dey_option.g.dart';


@freezed
class DayOption with _$DayOption {
  const factory DayOption({
    required String days,
    @JsonKey(name: 'expiry_days') required String expiryDays,
    @JsonKey(name: 'expiry_date') required String expiryDate,
  }) = _DayOption;

  factory DayOption.fromJson(Map<String, dynamic> json) => _$DayOptionFromJson(json);
}