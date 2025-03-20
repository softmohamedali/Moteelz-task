// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet_category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WalletCategory _$WalletCategoryFromJson(Map<String, dynamic> json) {
  return _WalletCategory.fromJson(json);
}

/// @nodoc
mixin _$WalletCategory {
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WalletCategoryCopyWith<WalletCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletCategoryCopyWith<$Res> {
  factory $WalletCategoryCopyWith(
          WalletCategory value, $Res Function(WalletCategory) then) =
      _$WalletCategoryCopyWithImpl<$Res, WalletCategory>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$WalletCategoryCopyWithImpl<$Res, $Val extends WalletCategory>
    implements $WalletCategoryCopyWith<$Res> {
  _$WalletCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WalletCategoryImplCopyWith<$Res>
    implements $WalletCategoryCopyWith<$Res> {
  factory _$$WalletCategoryImplCopyWith(_$WalletCategoryImpl value,
          $Res Function(_$WalletCategoryImpl) then) =
      __$$WalletCategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$WalletCategoryImplCopyWithImpl<$Res>
    extends _$WalletCategoryCopyWithImpl<$Res, _$WalletCategoryImpl>
    implements _$$WalletCategoryImplCopyWith<$Res> {
  __$$WalletCategoryImplCopyWithImpl(
      _$WalletCategoryImpl _value, $Res Function(_$WalletCategoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$WalletCategoryImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WalletCategoryImpl implements _WalletCategory {
  const _$WalletCategoryImpl({required this.name});

  factory _$WalletCategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$WalletCategoryImplFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'WalletCategory(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletCategoryImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WalletCategoryImplCopyWith<_$WalletCategoryImpl> get copyWith =>
      __$$WalletCategoryImplCopyWithImpl<_$WalletCategoryImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WalletCategoryImplToJson(
      this,
    );
  }
}

abstract class _WalletCategory implements WalletCategory {
  const factory _WalletCategory({required final String name}) =
      _$WalletCategoryImpl;

  factory _WalletCategory.fromJson(Map<String, dynamic> json) =
      _$WalletCategoryImpl.fromJson;

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$WalletCategoryImplCopyWith<_$WalletCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
