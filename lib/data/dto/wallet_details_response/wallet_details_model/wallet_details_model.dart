import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:moteelz/data/dto/wallet_details_response/wallet_details_model/wallet_feature/wallet_feature.dart';

import '../../wallets_response/wallet_model/day_option/dey_option.dart';
import '../../wallets_response/wallet_model/feature/feature.dart';
import '../../wallets_response/wallet_model/wallet_category/wallet_category.dart';
import 'city/city.dart';
import 'country/country.dart';


part 'wallet_details_model.freezed.dart';
part 'wallet_details_model.g.dart';
@freezed
class WalletDetailModel with _$WalletDetailModel {
  const factory WalletDetailModel({
    required int id,
    @JsonKey(name: 'wallet_category_id') required int walletCategoryId,
    required String name,
    required int order,
    required int days,
    @JsonKey(name: 'available_days') required int availableDays,
    @JsonKey(name: 'numbers_of_days') required List<DayOption> numbersOfDays,
    required double price,
    required int occupancy,
    @JsonKey(name: 'min_unit_price') required double minUnitPrice,
    @JsonKey(name: 'max_unit_price') required double maxUnitPrice,
    required String currency,
    @JsonKey(name: 'tax_percent') required double taxPercent,
    required bool active,
    required int type,
    required String description,
    @JsonKey(name: 'wallet_image') required String walletImage,
    @JsonKey(name: 'expiry_date') required String expiryDate,
    @JsonKey(name: 'hotel_stars') required List<dynamic> hotelStars,
    @JsonKey(name: 'wallet_category') required WalletCategory walletCategory,
    @JsonKey(name: 'features_favorites') required List<Feature> featuresFavorites,
    @JsonKey(name: 'Wallet_features') required List<WalletFeature> walletFeatures,
    @JsonKey(name: 'Wallet_policies') required List<dynamic> walletPolicies,
    required List<Country> countries,
    required List<City> cities,
    required List<dynamic> hotels,
    @JsonKey(name: 'accommodation_types') required dynamic accommodationTypes,
  }) = _WalletDetailModel;

  factory WalletDetailModel.fromJson(Map<String, dynamic> json) => _$WalletDetailModelFromJson(json);
}




