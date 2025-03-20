// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallets_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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
