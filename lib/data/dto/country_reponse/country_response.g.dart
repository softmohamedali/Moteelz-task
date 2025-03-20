// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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
