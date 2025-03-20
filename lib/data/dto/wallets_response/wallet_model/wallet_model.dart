
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:moteelz/data/dto/wallets_response/wallet_model/wallet_category/wallet_category.dart';

import 'day_option/dey_option.dart';
import 'feature/feature.dart';


part 'wallet_model.freezed.dart';
part 'wallet_model.g.dart';

@freezed
class WalletModel with _$WalletModel {
  const factory WalletModel({
    required int id,
    required String name,
    @JsonKey(name: 'available_days') required int availableDays,
    @JsonKey(name: 'numbers_of_days') required List<DayOption> numbersOfDays,
    required double price,
    required String currency,
    @JsonKey(name: 'wallet_image') required String walletImage,
    @JsonKey(name: 'expiry_date') required String expiryDate,
    @JsonKey(name: 'wallet_category') required WalletCategory walletCategory,
    @JsonKey(name: 'features_favorites') required List<Feature> featuresFavorites,
  }) = _WalletModel;

  factory WalletModel.fromJson(Map<String, dynamic> json) => _$WalletModelFromJson(json);
}








