
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';


part 'feature.freezed.dart';
part 'feature.g.dart';

@freezed
class Feature with _$Feature {
  const factory Feature({
    required String name,
  }) = _Feature;

  factory Feature.fromJson(Map<String, dynamic> json) => _$FeatureFromJson(json);
}
