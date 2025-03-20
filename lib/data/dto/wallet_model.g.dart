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

_$DayOptionImpl _$$DayOptionImplFromJson(Map<String, dynamic> json) =>
    _$DayOptionImpl(
      days: json['days'] as String,
      expiryDays: json['expiry_days'] as String,
      expiryDate: json['expiry_date'] as String,
    );

Map<String, dynamic> _$$DayOptionImplToJson(_$DayOptionImpl instance) =>
    <String, dynamic>{
      'days': instance.days,
      'expiry_days': instance.expiryDays,
      'expiry_date': instance.expiryDate,
    };

_$WalletCategoryImpl _$$WalletCategoryImplFromJson(Map<String, dynamic> json) =>
    _$WalletCategoryImpl(
      name: json['name'] as String,
    );

Map<String, dynamic> _$$WalletCategoryImplToJson(
        _$WalletCategoryImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

_$FeatureImpl _$$FeatureImplFromJson(Map<String, dynamic> json) =>
    _$FeatureImpl(
      name: json['name'] as String,
    );

Map<String, dynamic> _$$FeatureImplToJson(_$FeatureImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

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

_$WalletFeatureImpl _$$WalletFeatureImplFromJson(Map<String, dynamic> json) =>
    _$WalletFeatureImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$$WalletFeatureImplToJson(_$WalletFeatureImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$CountryImpl _$$CountryImplFromJson(Map<String, dynamic> json) =>
    _$CountryImpl(
      id: (json['id'] as num).toInt(),
      apiId: (json['apiId'] as num).toInt(),
      name: json['name'] as String,
      iso: json['iso'] as String,
    );

Map<String, dynamic> _$$CountryImplToJson(_$CountryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'apiId': instance.apiId,
      'name': instance.name,
      'iso': instance.iso,
    };

_$CityImpl _$$CityImplFromJson(Map<String, dynamic> json) => _$CityImpl(
      id: (json['id'] as num).toInt(),
      apiId: (json['apiId'] as num).toInt(),
      apiIdAlternate: (json['api_id'] as num).toInt(),
      countryId: (json['countryId'] as num).toInt(),
      name: json['name'] as String,
      code: json['code'] as String,
    );

Map<String, dynamic> _$$CityImplToJson(_$CityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'apiId': instance.apiId,
      'api_id': instance.apiIdAlternate,
      'countryId': instance.countryId,
      'name': instance.name,
      'code': instance.code,
    };

_$CountryModelImpl _$$CountryModelImplFromJson(Map<String, dynamic> json) =>
    _$CountryModelImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$$CountryModelImplToJson(_$CountryModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$WalletResponseImpl _$$WalletResponseImplFromJson(Map<String, dynamic> json) =>
    _$WalletResponseImpl(
      data: (json['data'] as List<dynamic>)
          .map((e) => WalletModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      links: (json['links'] as List<dynamic>)
          .map((e) => Link.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: Meta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$WalletResponseImplToJson(
        _$WalletResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'links': instance.links,
      'meta': instance.meta,
    };

_$LinkImpl _$$LinkImplFromJson(Map<String, dynamic> json) => _$LinkImpl(
      url: json['url'] as String?,
      label: json['label'] as String,
      active: json['active'] as bool,
    );

Map<String, dynamic> _$$LinkImplToJson(_$LinkImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'label': instance.label,
      'active': instance.active,
    };

_$MetaImpl _$$MetaImplFromJson(Map<String, dynamic> json) => _$MetaImpl(
      currentPage: (json['current_page'] as num).toInt(),
      lastPage: (json['last_page'] as num).toInt(),
      total: (json['total'] as num).toInt(),
      perPage: (json['per_page'] as num).toInt(),
    );

Map<String, dynamic> _$$MetaImplToJson(_$MetaImpl instance) =>
    <String, dynamic>{
      'current_page': instance.currentPage,
      'last_page': instance.lastPage,
      'total': instance.total,
      'per_page': instance.perPage,
    };

_$WalletDetailResponseImpl _$$WalletDetailResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$WalletDetailResponseImpl(
      data: WalletDetailModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$WalletDetailResponseImplToJson(
        _$WalletDetailResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$CountryResponseImpl _$$CountryResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CountryResponseImpl(
      data: (json['data'] as List<dynamic>)
          .map((e) => CountryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CountryResponseImplToJson(
        _$CountryResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
