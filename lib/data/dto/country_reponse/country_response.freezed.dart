// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'country_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CountryResponse _$CountryResponseFromJson(Map<String, dynamic> json) {
  return _CountryResponse.fromJson(json);
}

/// @nodoc
mixin _$CountryResponse {
  List<CountryModel> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CountryResponseCopyWith<CountryResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountryResponseCopyWith<$Res> {
  factory $CountryResponseCopyWith(
          CountryResponse value, $Res Function(CountryResponse) then) =
      _$CountryResponseCopyWithImpl<$Res, CountryResponse>;
  @useResult
  $Res call({List<CountryModel> data});
}

/// @nodoc
class _$CountryResponseCopyWithImpl<$Res, $Val extends CountryResponse>
    implements $CountryResponseCopyWith<$Res> {
  _$CountryResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CountryModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CountryResponseImplCopyWith<$Res>
    implements $CountryResponseCopyWith<$Res> {
  factory _$$CountryResponseImplCopyWith(_$CountryResponseImpl value,
          $Res Function(_$CountryResponseImpl) then) =
      __$$CountryResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CountryModel> data});
}

/// @nodoc
class __$$CountryResponseImplCopyWithImpl<$Res>
    extends _$CountryResponseCopyWithImpl<$Res, _$CountryResponseImpl>
    implements _$$CountryResponseImplCopyWith<$Res> {
  __$$CountryResponseImplCopyWithImpl(
      _$CountryResponseImpl _value, $Res Function(_$CountryResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$CountryResponseImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CountryModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CountryResponseImpl implements _CountryResponse {
  const _$CountryResponseImpl({required final List<CountryModel> data})
      : _data = data;

  factory _$CountryResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CountryResponseImplFromJson(json);

  final List<CountryModel> _data;
  @override
  List<CountryModel> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'CountryResponse(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountryResponseImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CountryResponseImplCopyWith<_$CountryResponseImpl> get copyWith =>
      __$$CountryResponseImplCopyWithImpl<_$CountryResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CountryResponseImplToJson(
      this,
    );
  }
}

abstract class _CountryResponse implements CountryResponse {
  const factory _CountryResponse({required final List<CountryModel> data}) =
      _$CountryResponseImpl;

  factory _CountryResponse.fromJson(Map<String, dynamic> json) =
      _$CountryResponseImpl.fromJson;

  @override
  List<CountryModel> get data;
  @override
  @JsonKey(ignore: true)
  _$$CountryResponseImplCopyWith<_$CountryResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
