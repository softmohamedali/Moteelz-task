// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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
