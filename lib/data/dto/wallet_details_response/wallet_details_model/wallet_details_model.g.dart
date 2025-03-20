// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WalletDetailModelImpl _$$WalletDetailModelImplFromJson(
        Map<String, dynamic> json) =>
    _$WalletDetailModelImpl(
      id: (json['id'] as num).toInt(),
      walletCategoryId: (json['wallet_category_id'] as num).toInt(),
      name: json['name'] as String,
      order: (json['order'] as num).toInt(),
      days: (json['days'] as num).toInt(),
      availableDays: (json['available_days'] as num).toInt(),
      numbersOfDays: (json['numbers_of_days'] as List<dynamic>)
          .map((e) => DayOption.fromJson(e as Map<String, dynamic>))
          .toList(),
      price: (json['price'] as num).toDouble(),
      occupancy: (json['occupancy'] as num).toInt(),
      minUnitPrice: (json['min_unit_price'] as num).toDouble(),
      maxUnitPrice: (json['max_unit_price'] as num).toDouble(),
      currency: json['currency'] as String,
      taxPercent: (json['tax_percent'] as num).toDouble(),
      active: json['active'] as bool,
      type: (json['type'] as num).toInt(),
      description: json['description'] as String,
      walletImage: json['wallet_image'] as String,
      expiryDate: json['expiry_date'] as String,
      hotelStars: json['hotel_stars'] as List<dynamic>,
      walletCategory: WalletCategory.fromJson(
          json['wallet_category'] as Map<String, dynamic>),
      featuresFavorites: (json['features_favorites'] as List<dynamic>)
          .map((e) => Feature.fromJson(e as Map<String, dynamic>))
          .toList(),
      walletFeatures: (json['Wallet_features'] as List<dynamic>)
          .map((e) => WalletFeature.fromJson(e as Map<String, dynamic>))
          .toList(),
      walletPolicies: json['Wallet_policies'] as List<dynamic>,
      countries: (json['countries'] as List<dynamic>)
          .map((e) => Country.fromJson(e as Map<String, dynamic>))
          .toList(),
      cities: (json['cities'] as List<dynamic>)
          .map((e) => City.fromJson(e as Map<String, dynamic>))
          .toList(),
      hotels: json['hotels'] as List<dynamic>,
      accommodationTypes: json['accommodation_types'],
    );

Map<String, dynamic> _$$WalletDetailModelImplToJson(
        _$WalletDetailModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'wallet_category_id': instance.walletCategoryId,
      'name': instance.name,
      'order': instance.order,
      'days': instance.days,
      'available_days': instance.availableDays,
      'numbers_of_days': instance.numbersOfDays,
      'price': instance.price,
      'occupancy': instance.occupancy,
      'min_unit_price': instance.minUnitPrice,
      'max_unit_price': instance.maxUnitPrice,
      'currency': instance.currency,
      'tax_percent': instance.taxPercent,
      'active': instance.active,
      'type': instance.type,
      'description': instance.description,
      'wallet_image': instance.walletImage,
      'expiry_date': instance.expiryDate,
      'hotel_stars': instance.hotelStars,
      'wallet_category': instance.walletCategory,
      'features_favorites': instance.featuresFavorites,
      'Wallet_features': instance.walletFeatures,
      'Wallet_policies': instance.walletPolicies,
      'countries': instance.countries,
      'cities': instance.cities,
      'hotels': instance.hotels,
      'accommodation_types': instance.accommodationTypes,
    };
