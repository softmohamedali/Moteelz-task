

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';


part 'wallet_category.freezed.dart';
part 'wallet_category.g.dart';


@freezed
class WalletCategory with _$WalletCategory {
  const factory WalletCategory({
    required String name,
  }) = _WalletCategory;

  factory WalletCategory.fromJson(Map<String, dynamic> json) => _$WalletCategoryFromJson(json);
}