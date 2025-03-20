// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dey_option.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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
