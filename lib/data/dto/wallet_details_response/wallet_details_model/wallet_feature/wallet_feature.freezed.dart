// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet_feature.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WalletFeature _$WalletFeatureFromJson(Map<String, dynamic> json) {
  return _WalletFeature.fromJson(json);
}

/// @nodoc
mixin _$WalletFeature {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WalletFeatureCopyWith<WalletFeature> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletFeatureCopyWith<$Res> {
  factory $WalletFeatureCopyWith(
          WalletFeature value, $Res Function(WalletFeature) then) =
      _$WalletFeatureCopyWithImpl<$Res, WalletFeature>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$WalletFeatureCopyWithImpl<$Res, $Val extends WalletFeature>
    implements $WalletFeatureCopyWith<$Res> {
  _$WalletFeatureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WalletFeatureImplCopyWith<$Res>
    implements $WalletFeatureCopyWith<$Res> {
  factory _$$WalletFeatureImplCopyWith(
          _$WalletFeatureImpl value, $Res Function(_$WalletFeatureImpl) then) =
      __$$WalletFeatureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$WalletFeatureImplCopyWithImpl<$Res>
    extends _$WalletFeatureCopyWithImpl<$Res, _$WalletFeatureImpl>
    implements _$$WalletFeatureImplCopyWith<$Res> {
  __$$WalletFeatureImplCopyWithImpl(
      _$WalletFeatureImpl _value, $Res Function(_$WalletFeatureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$WalletFeatureImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WalletFeatureImpl implements _WalletFeature {
  const _$WalletFeatureImpl({required this.id, required this.name});

  factory _$WalletFeatureImpl.fromJson(Map<String, dynamic> json) =>
      _$$WalletFeatureImplFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'WalletFeature(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletFeatureImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WalletFeatureImplCopyWith<_$WalletFeatureImpl> get copyWith =>
      __$$WalletFeatureImplCopyWithImpl<_$WalletFeatureImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WalletFeatureImplToJson(
      this,
    );
  }
}

abstract class _WalletFeature implements WalletFeature {
  const factory _WalletFeature(
      {required final int id,
      required final String name}) = _$WalletFeatureImpl;

  factory _WalletFeature.fromJson(Map<String, dynamic> json) =
      _$WalletFeatureImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$WalletFeatureImplCopyWith<_$WalletFeatureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
