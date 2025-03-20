// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dey_option.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DayOption _$DayOptionFromJson(Map<String, dynamic> json) {
  return _DayOption.fromJson(json);
}

/// @nodoc
mixin _$DayOption {
  String get days => throw _privateConstructorUsedError;
  @JsonKey(name: 'expiry_days')
  String get expiryDays => throw _privateConstructorUsedError;
  @JsonKey(name: 'expiry_date')
  String get expiryDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DayOptionCopyWith<DayOption> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DayOptionCopyWith<$Res> {
  factory $DayOptionCopyWith(DayOption value, $Res Function(DayOption) then) =
      _$DayOptionCopyWithImpl<$Res, DayOption>;
  @useResult
  $Res call(
      {String days,
      @JsonKey(name: 'expiry_days') String expiryDays,
      @JsonKey(name: 'expiry_date') String expiryDate});
}

/// @nodoc
class _$DayOptionCopyWithImpl<$Res, $Val extends DayOption>
    implements $DayOptionCopyWith<$Res> {
  _$DayOptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? days = null,
    Object? expiryDays = null,
    Object? expiryDate = null,
  }) {
    return _then(_value.copyWith(
      days: null == days
          ? _value.days
          : days // ignore: cast_nullable_to_non_nullable
              as String,
      expiryDays: null == expiryDays
          ? _value.expiryDays
          : expiryDays // ignore: cast_nullable_to_non_nullable
              as String,
      expiryDate: null == expiryDate
          ? _value.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DayOptionImplCopyWith<$Res>
    implements $DayOptionCopyWith<$Res> {
  factory _$$DayOptionImplCopyWith(
          _$DayOptionImpl value, $Res Function(_$DayOptionImpl) then) =
      __$$DayOptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String days,
      @JsonKey(name: 'expiry_days') String expiryDays,
      @JsonKey(name: 'expiry_date') String expiryDate});
}

/// @nodoc
class __$$DayOptionImplCopyWithImpl<$Res>
    extends _$DayOptionCopyWithImpl<$Res, _$DayOptionImpl>
    implements _$$DayOptionImplCopyWith<$Res> {
  __$$DayOptionImplCopyWithImpl(
      _$DayOptionImpl _value, $Res Function(_$DayOptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? days = null,
    Object? expiryDays = null,
    Object? expiryDate = null,
  }) {
    return _then(_$DayOptionImpl(
      days: null == days
          ? _value.days
          : days // ignore: cast_nullable_to_non_nullable
              as String,
      expiryDays: null == expiryDays
          ? _value.expiryDays
          : expiryDays // ignore: cast_nullable_to_non_nullable
              as String,
      expiryDate: null == expiryDate
          ? _value.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DayOptionImpl implements _DayOption {
  const _$DayOptionImpl(
      {required this.days,
      @JsonKey(name: 'expiry_days') required this.expiryDays,
      @JsonKey(name: 'expiry_date') required this.expiryDate});

  factory _$DayOptionImpl.fromJson(Map<String, dynamic> json) =>
      _$$DayOptionImplFromJson(json);

  @override
  final String days;
  @override
  @JsonKey(name: 'expiry_days')
  final String expiryDays;
  @override
  @JsonKey(name: 'expiry_date')
  final String expiryDate;

  @override
  String toString() {
    return 'DayOption(days: $days, expiryDays: $expiryDays, expiryDate: $expiryDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DayOptionImpl &&
            (identical(other.days, days) || other.days == days) &&
            (identical(other.expiryDays, expiryDays) ||
                other.expiryDays == expiryDays) &&
            (identical(other.expiryDate, expiryDate) ||
                other.expiryDate == expiryDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, days, expiryDays, expiryDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DayOptionImplCopyWith<_$DayOptionImpl> get copyWith =>
      __$$DayOptionImplCopyWithImpl<_$DayOptionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DayOptionImplToJson(
      this,
    );
  }
}

abstract class _DayOption implements DayOption {
  const factory _DayOption(
          {required final String days,
          @JsonKey(name: 'expiry_days') required final String expiryDays,
          @JsonKey(name: 'expiry_date') required final String expiryDate}) =
      _$DayOptionImpl;

  factory _DayOption.fromJson(Map<String, dynamic> json) =
      _$DayOptionImpl.fromJson;

  @override
  String get days;
  @override
  @JsonKey(name: 'expiry_days')
  String get expiryDays;
  @override
  @JsonKey(name: 'expiry_date')
  String get expiryDate;
  @override
  @JsonKey(ignore: true)
  _$$DayOptionImplCopyWith<_$DayOptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
