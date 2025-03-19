
import 'package:freezed_annotation/freezed_annotation.dart';

part 'wallet_model.freezed.dart';

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

@freezed
class DayOption with _$DayOption {
  const factory DayOption({
    required String days,
    @JsonKey(name: 'expiry_days') required String expiryDays,
    @JsonKey(name: 'expiry_date') required String expiryDate,
  }) = _DayOption;

  factory DayOption.fromJson(Map<String, dynamic> json) => _$DayOptionFromJson(json);
}

@freezed
class WalletCategory with _$WalletCategory {
  const factory WalletCategory({
    required String name,
  }) = _WalletCategory;

  factory WalletCategory.fromJson(Map<String, dynamic> json) => _$WalletCategoryFromJson(json);
}

@freezed
class Feature with _$Feature {
  const factory Feature({
    required String name,
  }) = _Feature;

  factory Feature.fromJson(Map<String, dynamic> json) => _$FeatureFromJson(json);
}

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

@freezed
class WalletFeature with _$WalletFeature {
  const factory WalletFeature({
    required int id,
    required String name,
  }) = _WalletFeature;

  factory WalletFeature.fromJson(Map<String, dynamic> json) => _$WalletFeatureFromJson(json);
}

@freezed
class Country with _$Country {
  const factory Country({
    required int id,
    required int apiId,
    required String name,
    required String iso,
  }) = _Country;

  factory Country.fromJson(Map<String, dynamic> json) => _$CountryFromJson(json);
}

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

@freezed
class CountryModel with _$CountryModel {
  const factory CountryModel({
    required int id,
    required String name,
  }) = _CountryModel;

  factory CountryModel.fromJson(Map<String, dynamic> json) => _$CountryModelFromJson(json);
}

@freezed
class WalletResponse with _$WalletResponse {
  const factory WalletResponse({
    required List<WalletModel> data,
    required List<Link> links,
    required Meta meta,
  }) = _WalletResponse;

  factory WalletResponse.fromJson(Map<String, dynamic> json) => _$WalletResponseFromJson(json);
}

@freezed
class Link with _$Link {
  const factory Link({
    required String? url,
    required String label,
    required bool active,
  }) = _Link;

  factory Link.fromJson(Map<String, dynamic> json) => _$LinkFromJson(json);
}

@freezed
class Meta with _$Meta {
  const factory Meta({
    @JsonKey(name: 'current_page') required int currentPage,
    @JsonKey(name: 'last_page') required int lastPage,
    required int total,
    @JsonKey(name: 'per_page') required int perPage,
  }) = _Meta;

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);
}

@freezed
class WalletDetailResponse with _$WalletDetailResponse {
  const factory WalletDetailResponse({
    required WalletDetailModel data,
  }) = _WalletDetailResponse;

  factory WalletDetailResponse.fromJson(Map<String, dynamic> json) => _$WalletDetailResponseFromJson(json);
}

@freezed
class CountryResponse with _$CountryResponse {
  const factory CountryResponse({
    required List<CountryModel> data,
  }) = _CountryResponse;

  factory CountryResponse.fromJson(Map<String, dynamic> json) => _$CountryResponseFromJson(json);
}