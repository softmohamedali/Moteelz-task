// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WalletModelImpl _$$WalletModelImplFromJson(Map<String, dynamic> json) =>
    _$WalletModelImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      availableDays: (json['available_days'] as num).toInt(),
      numbersOfDays: (json['numbers_of_days'] as List<dynamic>)
          .map((e) => DayOption.fromJson(e as Map<String, dynamic>))
          .toList(),
      price: (json['price'] as num).toDouble(),
      currency: json['currency'] as String,
      walletImage: json['wallet_image'] as String,
      expiryDate: json['expiry_date'] as String,
      walletCategory: WalletCategory.fromJson(
          json['wallet_category'] as Map<String, dynamic>),
      featuresFavorites: (json['features_favorites'] as List<dynamic>)
          .map((e) => Feature.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$WalletModelImplToJson(_$WalletModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'available_days': instance.availableDays,
      'numbers_of_days': instance.numbersOfDays,
      'price': instance.price,
      'currency': instance.currency,
      'wallet_image': instance.walletImage,
      'expiry_date': instance.expiryDate,
      'wallet_category': instance.walletCategory,
      'features_favorites': instance.featuresFavorites,
    };
