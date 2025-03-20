// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WalletModel _$WalletModelFromJson(Map<String, dynamic> json) {
  return _WalletModel.fromJson(json);
}

/// @nodoc
mixin _$WalletModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'available_days')
  int get availableDays => throw _privateConstructorUsedError;
  @JsonKey(name: 'numbers_of_days')
  List<DayOption> get numbersOfDays => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;
  @JsonKey(name: 'wallet_image')
  String get walletImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'expiry_date')
  String get expiryDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'wallet_category')
  WalletCategory get walletCategory => throw _privateConstructorUsedError;
  @JsonKey(name: 'features_favorites')
  List<Feature> get featuresFavorites => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WalletModelCopyWith<WalletModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletModelCopyWith<$Res> {
  factory $WalletModelCopyWith(
          WalletModel value, $Res Function(WalletModel) then) =
      _$WalletModelCopyWithImpl<$Res, WalletModel>;
  @useResult
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'available_days') int availableDays,
      @JsonKey(name: 'numbers_of_days') List<DayOption> numbersOfDays,
      double price,
      String currency,
      @JsonKey(name: 'wallet_image') String walletImage,
      @JsonKey(name: 'expiry_date') String expiryDate,
      @JsonKey(name: 'wallet_category') WalletCategory walletCategory,
      @JsonKey(name: 'features_favorites') List<Feature> featuresFavorites});

  $WalletCategoryCopyWith<$Res> get walletCategory;
}

/// @nodoc
class _$WalletModelCopyWithImpl<$Res, $Val extends WalletModel>
    implements $WalletModelCopyWith<$Res> {
  _$WalletModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? availableDays = null,
    Object? numbersOfDays = null,
    Object? price = null,
    Object? currency = null,
    Object? walletImage = null,
    Object? expiryDate = null,
    Object? walletCategory = null,
    Object? featuresFavorites = null,
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
      availableDays: null == availableDays
          ? _value.availableDays
          : availableDays // ignore: cast_nullable_to_non_nullable
              as int,
      numbersOfDays: null == numbersOfDays
          ? _value.numbersOfDays
          : numbersOfDays // ignore: cast_nullable_to_non_nullable
              as List<DayOption>,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      walletImage: null == walletImage
          ? _value.walletImage
          : walletImage // ignore: cast_nullable_to_non_nullable
              as String,
      expiryDate: null == expiryDate
          ? _value.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as String,
      walletCategory: null == walletCategory
          ? _value.walletCategory
          : walletCategory // ignore: cast_nullable_to_non_nullable
              as WalletCategory,
      featuresFavorites: null == featuresFavorites
          ? _value.featuresFavorites
          : featuresFavorites // ignore: cast_nullable_to_non_nullable
              as List<Feature>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WalletCategoryCopyWith<$Res> get walletCategory {
    return $WalletCategoryCopyWith<$Res>(_value.walletCategory, (value) {
      return _then(_value.copyWith(walletCategory: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WalletModelImplCopyWith<$Res>
    implements $WalletModelCopyWith<$Res> {
  factory _$$WalletModelImplCopyWith(
          _$WalletModelImpl value, $Res Function(_$WalletModelImpl) then) =
      __$$WalletModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'available_days') int availableDays,
      @JsonKey(name: 'numbers_of_days') List<DayOption> numbersOfDays,
      double price,
      String currency,
      @JsonKey(name: 'wallet_image') String walletImage,
      @JsonKey(name: 'expiry_date') String expiryDate,
      @JsonKey(name: 'wallet_category') WalletCategory walletCategory,
      @JsonKey(name: 'features_favorites') List<Feature> featuresFavorites});

  @override
  $WalletCategoryCopyWith<$Res> get walletCategory;
}

/// @nodoc
class __$$WalletModelImplCopyWithImpl<$Res>
    extends _$WalletModelCopyWithImpl<$Res, _$WalletModelImpl>
    implements _$$WalletModelImplCopyWith<$Res> {
  __$$WalletModelImplCopyWithImpl(
      _$WalletModelImpl _value, $Res Function(_$WalletModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? availableDays = null,
    Object? numbersOfDays = null,
    Object? price = null,
    Object? currency = null,
    Object? walletImage = null,
    Object? expiryDate = null,
    Object? walletCategory = null,
    Object? featuresFavorites = null,
  }) {
    return _then(_$WalletModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      availableDays: null == availableDays
          ? _value.availableDays
          : availableDays // ignore: cast_nullable_to_non_nullable
              as int,
      numbersOfDays: null == numbersOfDays
          ? _value._numbersOfDays
          : numbersOfDays // ignore: cast_nullable_to_non_nullable
              as List<DayOption>,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      walletImage: null == walletImage
          ? _value.walletImage
          : walletImage // ignore: cast_nullable_to_non_nullable
              as String,
      expiryDate: null == expiryDate
          ? _value.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as String,
      walletCategory: null == walletCategory
          ? _value.walletCategory
          : walletCategory // ignore: cast_nullable_to_non_nullable
              as WalletCategory,
      featuresFavorites: null == featuresFavorites
          ? _value._featuresFavorites
          : featuresFavorites // ignore: cast_nullable_to_non_nullable
              as List<Feature>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WalletModelImpl implements _WalletModel {
  const _$WalletModelImpl(
      {required this.id,
      required this.name,
      @JsonKey(name: 'available_days') required this.availableDays,
      @JsonKey(name: 'numbers_of_days')
      required final List<DayOption> numbersOfDays,
      required this.price,
      required this.currency,
      @JsonKey(name: 'wallet_image') required this.walletImage,
      @JsonKey(name: 'expiry_date') required this.expiryDate,
      @JsonKey(name: 'wallet_category') required this.walletCategory,
      @JsonKey(name: 'features_favorites')
      required final List<Feature> featuresFavorites})
      : _numbersOfDays = numbersOfDays,
        _featuresFavorites = featuresFavorites;

  factory _$WalletModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WalletModelImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  @JsonKey(name: 'available_days')
  final int availableDays;
  final List<DayOption> _numbersOfDays;
  @override
  @JsonKey(name: 'numbers_of_days')
  List<DayOption> get numbersOfDays {
    if (_numbersOfDays is EqualUnmodifiableListView) return _numbersOfDays;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_numbersOfDays);
  }

  @override
  final double price;
  @override
  final String currency;
  @override
  @JsonKey(name: 'wallet_image')
  final String walletImage;
  @override
  @JsonKey(name: 'expiry_date')
  final String expiryDate;
  @override
  @JsonKey(name: 'wallet_category')
  final WalletCategory walletCategory;
  final List<Feature> _featuresFavorites;
  @override
  @JsonKey(name: 'features_favorites')
  List<Feature> get featuresFavorites {
    if (_featuresFavorites is EqualUnmodifiableListView)
      return _featuresFavorites;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_featuresFavorites);
  }

  @override
  String toString() {
    return 'WalletModel(id: $id, name: $name, availableDays: $availableDays, numbersOfDays: $numbersOfDays, price: $price, currency: $currency, walletImage: $walletImage, expiryDate: $expiryDate, walletCategory: $walletCategory, featuresFavorites: $featuresFavorites)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.availableDays, availableDays) ||
                other.availableDays == availableDays) &&
            const DeepCollectionEquality()
                .equals(other._numbersOfDays, _numbersOfDays) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.walletImage, walletImage) ||
                other.walletImage == walletImage) &&
            (identical(other.expiryDate, expiryDate) ||
                other.expiryDate == expiryDate) &&
            (identical(other.walletCategory, walletCategory) ||
                other.walletCategory == walletCategory) &&
            const DeepCollectionEquality()
                .equals(other._featuresFavorites, _featuresFavorites));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      availableDays,
      const DeepCollectionEquality().hash(_numbersOfDays),
      price,
      currency,
      walletImage,
      expiryDate,
      walletCategory,
      const DeepCollectionEquality().hash(_featuresFavorites));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WalletModelImplCopyWith<_$WalletModelImpl> get copyWith =>
      __$$WalletModelImplCopyWithImpl<_$WalletModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WalletModelImplToJson(
      this,
    );
  }
}

abstract class _WalletModel implements WalletModel {
  const factory _WalletModel(
      {required final int id,
      required final String name,
      @JsonKey(name: 'available_days') required final int availableDays,
      @JsonKey(name: 'numbers_of_days')
      required final List<DayOption> numbersOfDays,
      required final double price,
      required final String currency,
      @JsonKey(name: 'wallet_image') required final String walletImage,
      @JsonKey(name: 'expiry_date') required final String expiryDate,
      @JsonKey(name: 'wallet_category')
      required final WalletCategory walletCategory,
      @JsonKey(name: 'features_favorites')
      required final List<Feature> featuresFavorites}) = _$WalletModelImpl;

  factory _WalletModel.fromJson(Map<String, dynamic> json) =
      _$WalletModelImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'available_days')
  int get availableDays;
  @override
  @JsonKey(name: 'numbers_of_days')
  List<DayOption> get numbersOfDays;
  @override
  double get price;
  @override
  String get currency;
  @override
  @JsonKey(name: 'wallet_image')
  String get walletImage;
  @override
  @JsonKey(name: 'expiry_date')
  String get expiryDate;
  @override
  @JsonKey(name: 'wallet_category')
  WalletCategory get walletCategory;
  @override
  @JsonKey(name: 'features_favorites')
  List<Feature> get featuresFavorites;
  @override
  @JsonKey(ignore: true)
  _$$WalletModelImplCopyWith<_$WalletModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
