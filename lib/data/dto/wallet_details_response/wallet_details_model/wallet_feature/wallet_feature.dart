import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';


part 'wallet_feature.freezed.dart';
part 'wallet_feature.g.dart';

@freezed
class WalletFeature with _$WalletFeature {
  const factory WalletFeature({
    required int id,
    required String name,
  }) = _WalletFeature;

  factory WalletFeature.fromJson(Map<String, dynamic> json) => _$WalletFeatureFromJson(json);
}
