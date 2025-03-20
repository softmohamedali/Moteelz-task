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

Feature _$FeatureFromJson(Map<String, dynamic> json) {
  return _Feature.fromJson(json);
}

/// @nodoc
mixin _$Feature {
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeatureCopyWith<Feature> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeatureCopyWith<$Res> {
  factory $FeatureCopyWith(Feature value, $Res Function(Feature) then) =
      _$FeatureCopyWithImpl<$Res, Feature>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$FeatureCopyWithImpl<$Res, $Val extends Feature>
    implements $FeatureCopyWith<$Res> {
  _$FeatureCopyWithImpl(this._value, this._then);

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
abstract class _$$FeatureImplCopyWith<$Res> implements $FeatureCopyWith<$Res> {
  factory _$$FeatureImplCopyWith(
          _$FeatureImpl value, $Res Function(_$FeatureImpl) then) =
      __$$FeatureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$FeatureImplCopyWithImpl<$Res>
    extends _$FeatureCopyWithImpl<$Res, _$FeatureImpl>
    implements _$$FeatureImplCopyWith<$Res> {
  __$$FeatureImplCopyWithImpl(
      _$FeatureImpl _value, $Res Function(_$FeatureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$FeatureImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FeatureImpl implements _Feature {
  const _$FeatureImpl({required this.name});

  factory _$FeatureImpl.fromJson(Map<String, dynamic> json) =>
      _$$FeatureImplFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'Feature(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeatureImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FeatureImplCopyWith<_$FeatureImpl> get copyWith =>
      __$$FeatureImplCopyWithImpl<_$FeatureImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FeatureImplToJson(
      this,
    );
  }
}

abstract class _Feature implements Feature {
  const factory _Feature({required final String name}) = _$FeatureImpl;

  factory _Feature.fromJson(Map<String, dynamic> json) = _$FeatureImpl.fromJson;

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$FeatureImplCopyWith<_$FeatureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WalletDetailModel _$WalletDetailModelFromJson(Map<String, dynamic> json) {
  return _WalletDetailModel.fromJson(json);
}

/// @nodoc
mixin _$WalletDetailModel {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'wallet_category_id')
  int get walletCategoryId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get order => throw _privateConstructorUsedError;
  int get days => throw _privateConstructorUsedError;
  @JsonKey(name: 'available_days')
  int get availableDays => throw _privateConstructorUsedError;
  @JsonKey(name: 'numbers_of_days')
  List<DayOption> get numbersOfDays => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  int get occupancy => throw _privateConstructorUsedError;
  @JsonKey(name: 'min_unit_price')
  double get minUnitPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'max_unit_price')
  double get maxUnitPrice => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;
  @JsonKey(name: 'tax_percent')
  double get taxPercent => throw _privateConstructorUsedError;
  bool get active => throw _privateConstructorUsedError;
  int get type => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'wallet_image')
  String get walletImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'expiry_date')
  String get expiryDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'hotel_stars')
  List<dynamic> get hotelStars => throw _privateConstructorUsedError;
  @JsonKey(name: 'wallet_category')
  WalletCategory get walletCategory => throw _privateConstructorUsedError;
  @JsonKey(name: 'features_favorites')
  List<Feature> get featuresFavorites => throw _privateConstructorUsedError;
  @JsonKey(name: 'Wallet_features')
  List<WalletFeature> get walletFeatures => throw _privateConstructorUsedError;
  @JsonKey(name: 'Wallet_policies')
  List<dynamic> get walletPolicies => throw _privateConstructorUsedError;
  List<Country> get countries => throw _privateConstructorUsedError;
  List<City> get cities => throw _privateConstructorUsedError;
  List<dynamic> get hotels => throw _privateConstructorUsedError;
  @JsonKey(name: 'accommodation_types')
  dynamic get accommodationTypes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WalletDetailModelCopyWith<WalletDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletDetailModelCopyWith<$Res> {
  factory $WalletDetailModelCopyWith(
          WalletDetailModel value, $Res Function(WalletDetailModel) then) =
      _$WalletDetailModelCopyWithImpl<$Res, WalletDetailModel>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'wallet_category_id') int walletCategoryId,
      String name,
      int order,
      int days,
      @JsonKey(name: 'available_days') int availableDays,
      @JsonKey(name: 'numbers_of_days') List<DayOption> numbersOfDays,
      double price,
      int occupancy,
      @JsonKey(name: 'min_unit_price') double minUnitPrice,
      @JsonKey(name: 'max_unit_price') double maxUnitPrice,
      String currency,
      @JsonKey(name: 'tax_percent') double taxPercent,
      bool active,
      int type,
      String description,
      @JsonKey(name: 'wallet_image') String walletImage,
      @JsonKey(name: 'expiry_date') String expiryDate,
      @JsonKey(name: 'hotel_stars') List<dynamic> hotelStars,
      @JsonKey(name: 'wallet_category') WalletCategory walletCategory,
      @JsonKey(name: 'features_favorites') List<Feature> featuresFavorites,
      @JsonKey(name: 'Wallet_features') List<WalletFeature> walletFeatures,
      @JsonKey(name: 'Wallet_policies') List<dynamic> walletPolicies,
      List<Country> countries,
      List<City> cities,
      List<dynamic> hotels,
      @JsonKey(name: 'accommodation_types') dynamic accommodationTypes});

  $WalletCategoryCopyWith<$Res> get walletCategory;
}

/// @nodoc
class _$WalletDetailModelCopyWithImpl<$Res, $Val extends WalletDetailModel>
    implements $WalletDetailModelCopyWith<$Res> {
  _$WalletDetailModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? walletCategoryId = null,
    Object? name = null,
    Object? order = null,
    Object? days = null,
    Object? availableDays = null,
    Object? numbersOfDays = null,
    Object? price = null,
    Object? occupancy = null,
    Object? minUnitPrice = null,
    Object? maxUnitPrice = null,
    Object? currency = null,
    Object? taxPercent = null,
    Object? active = null,
    Object? type = null,
    Object? description = null,
    Object? walletImage = null,
    Object? expiryDate = null,
    Object? hotelStars = null,
    Object? walletCategory = null,
    Object? featuresFavorites = null,
    Object? walletFeatures = null,
    Object? walletPolicies = null,
    Object? countries = null,
    Object? cities = null,
    Object? hotels = null,
    Object? accommodationTypes = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      walletCategoryId: null == walletCategoryId
          ? _value.walletCategoryId
          : walletCategoryId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      days: null == days
          ? _value.days
          : days // ignore: cast_nullable_to_non_nullable
              as int,
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
      occupancy: null == occupancy
          ? _value.occupancy
          : occupancy // ignore: cast_nullable_to_non_nullable
              as int,
      minUnitPrice: null == minUnitPrice
          ? _value.minUnitPrice
          : minUnitPrice // ignore: cast_nullable_to_non_nullable
              as double,
      maxUnitPrice: null == maxUnitPrice
          ? _value.maxUnitPrice
          : maxUnitPrice // ignore: cast_nullable_to_non_nullable
              as double,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      taxPercent: null == taxPercent
          ? _value.taxPercent
          : taxPercent // ignore: cast_nullable_to_non_nullable
              as double,
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      walletImage: null == walletImage
          ? _value.walletImage
          : walletImage // ignore: cast_nullable_to_non_nullable
              as String,
      expiryDate: null == expiryDate
          ? _value.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as String,
      hotelStars: null == hotelStars
          ? _value.hotelStars
          : hotelStars // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      walletCategory: null == walletCategory
          ? _value.walletCategory
          : walletCategory // ignore: cast_nullable_to_non_nullable
              as WalletCategory,
      featuresFavorites: null == featuresFavorites
          ? _value.featuresFavorites
          : featuresFavorites // ignore: cast_nullable_to_non_nullable
              as List<Feature>,
      walletFeatures: null == walletFeatures
          ? _value.walletFeatures
          : walletFeatures // ignore: cast_nullable_to_non_nullable
              as List<WalletFeature>,
      walletPolicies: null == walletPolicies
          ? _value.walletPolicies
          : walletPolicies // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      countries: null == countries
          ? _value.countries
          : countries // ignore: cast_nullable_to_non_nullable
              as List<Country>,
      cities: null == cities
          ? _value.cities
          : cities // ignore: cast_nullable_to_non_nullable
              as List<City>,
      hotels: null == hotels
          ? _value.hotels
          : hotels // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      accommodationTypes: freezed == accommodationTypes
          ? _value.accommodationTypes
          : accommodationTypes // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
abstract class _$$WalletDetailModelImplCopyWith<$Res>
    implements $WalletDetailModelCopyWith<$Res> {
  factory _$$WalletDetailModelImplCopyWith(_$WalletDetailModelImpl value,
          $Res Function(_$WalletDetailModelImpl) then) =
      __$$WalletDetailModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'wallet_category_id') int walletCategoryId,
      String name,
      int order,
      int days,
      @JsonKey(name: 'available_days') int availableDays,
      @JsonKey(name: 'numbers_of_days') List<DayOption> numbersOfDays,
      double price,
      int occupancy,
      @JsonKey(name: 'min_unit_price') double minUnitPrice,
      @JsonKey(name: 'max_unit_price') double maxUnitPrice,
      String currency,
      @JsonKey(name: 'tax_percent') double taxPercent,
      bool active,
      int type,
      String description,
      @JsonKey(name: 'wallet_image') String walletImage,
      @JsonKey(name: 'expiry_date') String expiryDate,
      @JsonKey(name: 'hotel_stars') List<dynamic> hotelStars,
      @JsonKey(name: 'wallet_category') WalletCategory walletCategory,
      @JsonKey(name: 'features_favorites') List<Feature> featuresFavorites,
      @JsonKey(name: 'Wallet_features') List<WalletFeature> walletFeatures,
      @JsonKey(name: 'Wallet_policies') List<dynamic> walletPolicies,
      List<Country> countries,
      List<City> cities,
      List<dynamic> hotels,
      @JsonKey(name: 'accommodation_types') dynamic accommodationTypes});

  @override
  $WalletCategoryCopyWith<$Res> get walletCategory;
}

/// @nodoc
class __$$WalletDetailModelImplCopyWithImpl<$Res>
    extends _$WalletDetailModelCopyWithImpl<$Res, _$WalletDetailModelImpl>
    implements _$$WalletDetailModelImplCopyWith<$Res> {
  __$$WalletDetailModelImplCopyWithImpl(_$WalletDetailModelImpl _value,
      $Res Function(_$WalletDetailModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? walletCategoryId = null,
    Object? name = null,
    Object? order = null,
    Object? days = null,
    Object? availableDays = null,
    Object? numbersOfDays = null,
    Object? price = null,
    Object? occupancy = null,
    Object? minUnitPrice = null,
    Object? maxUnitPrice = null,
    Object? currency = null,
    Object? taxPercent = null,
    Object? active = null,
    Object? type = null,
    Object? description = null,
    Object? walletImage = null,
    Object? expiryDate = null,
    Object? hotelStars = null,
    Object? walletCategory = null,
    Object? featuresFavorites = null,
    Object? walletFeatures = null,
    Object? walletPolicies = null,
    Object? countries = null,
    Object? cities = null,
    Object? hotels = null,
    Object? accommodationTypes = freezed,
  }) {
    return _then(_$WalletDetailModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      walletCategoryId: null == walletCategoryId
          ? _value.walletCategoryId
          : walletCategoryId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      days: null == days
          ? _value.days
          : days // ignore: cast_nullable_to_non_nullable
              as int,
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
      occupancy: null == occupancy
          ? _value.occupancy
          : occupancy // ignore: cast_nullable_to_non_nullable
              as int,
      minUnitPrice: null == minUnitPrice
          ? _value.minUnitPrice
          : minUnitPrice // ignore: cast_nullable_to_non_nullable
              as double,
      maxUnitPrice: null == maxUnitPrice
          ? _value.maxUnitPrice
          : maxUnitPrice // ignore: cast_nullable_to_non_nullable
              as double,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      taxPercent: null == taxPercent
          ? _value.taxPercent
          : taxPercent // ignore: cast_nullable_to_non_nullable
              as double,
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      walletImage: null == walletImage
          ? _value.walletImage
          : walletImage // ignore: cast_nullable_to_non_nullable
              as String,
      expiryDate: null == expiryDate
          ? _value.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as String,
      hotelStars: null == hotelStars
          ? _value._hotelStars
          : hotelStars // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      walletCategory: null == walletCategory
          ? _value.walletCategory
          : walletCategory // ignore: cast_nullable_to_non_nullable
              as WalletCategory,
      featuresFavorites: null == featuresFavorites
          ? _value._featuresFavorites
          : featuresFavorites // ignore: cast_nullable_to_non_nullable
              as List<Feature>,
      walletFeatures: null == walletFeatures
          ? _value._walletFeatures
          : walletFeatures // ignore: cast_nullable_to_non_nullable
              as List<WalletFeature>,
      walletPolicies: null == walletPolicies
          ? _value._walletPolicies
          : walletPolicies // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      countries: null == countries
          ? _value._countries
          : countries // ignore: cast_nullable_to_non_nullable
              as List<Country>,
      cities: null == cities
          ? _value._cities
          : cities // ignore: cast_nullable_to_non_nullable
              as List<City>,
      hotels: null == hotels
          ? _value._hotels
          : hotels // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      accommodationTypes: freezed == accommodationTypes
          ? _value.accommodationTypes
          : accommodationTypes // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WalletDetailModelImpl implements _WalletDetailModel {
  const _$WalletDetailModelImpl(
      {required this.id,
      @JsonKey(name: 'wallet_category_id') required this.walletCategoryId,
      required this.name,
      required this.order,
      required this.days,
      @JsonKey(name: 'available_days') required this.availableDays,
      @JsonKey(name: 'numbers_of_days')
      required final List<DayOption> numbersOfDays,
      required this.price,
      required this.occupancy,
      @JsonKey(name: 'min_unit_price') required this.minUnitPrice,
      @JsonKey(name: 'max_unit_price') required this.maxUnitPrice,
      required this.currency,
      @JsonKey(name: 'tax_percent') required this.taxPercent,
      required this.active,
      required this.type,
      required this.description,
      @JsonKey(name: 'wallet_image') required this.walletImage,
      @JsonKey(name: 'expiry_date') required this.expiryDate,
      @JsonKey(name: 'hotel_stars') required final List<dynamic> hotelStars,
      @JsonKey(name: 'wallet_category') required this.walletCategory,
      @JsonKey(name: 'features_favorites')
      required final List<Feature> featuresFavorites,
      @JsonKey(name: 'Wallet_features')
      required final List<WalletFeature> walletFeatures,
      @JsonKey(name: 'Wallet_policies')
      required final List<dynamic> walletPolicies,
      required final List<Country> countries,
      required final List<City> cities,
      required final List<dynamic> hotels,
      @JsonKey(name: 'accommodation_types') required this.accommodationTypes})
      : _numbersOfDays = numbersOfDays,
        _hotelStars = hotelStars,
        _featuresFavorites = featuresFavorites,
        _walletFeatures = walletFeatures,
        _walletPolicies = walletPolicies,
        _countries = countries,
        _cities = cities,
        _hotels = hotels;

  factory _$WalletDetailModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WalletDetailModelImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'wallet_category_id')
  final int walletCategoryId;
  @override
  final String name;
  @override
  final int order;
  @override
  final int days;
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
  final int occupancy;
  @override
  @JsonKey(name: 'min_unit_price')
  final double minUnitPrice;
  @override
  @JsonKey(name: 'max_unit_price')
  final double maxUnitPrice;
  @override
  final String currency;
  @override
  @JsonKey(name: 'tax_percent')
  final double taxPercent;
  @override
  final bool active;
  @override
  final int type;
  @override
  final String description;
  @override
  @JsonKey(name: 'wallet_image')
  final String walletImage;
  @override
  @JsonKey(name: 'expiry_date')
  final String expiryDate;
  final List<dynamic> _hotelStars;
  @override
  @JsonKey(name: 'hotel_stars')
  List<dynamic> get hotelStars {
    if (_hotelStars is EqualUnmodifiableListView) return _hotelStars;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_hotelStars);
  }

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

  final List<WalletFeature> _walletFeatures;
  @override
  @JsonKey(name: 'Wallet_features')
  List<WalletFeature> get walletFeatures {
    if (_walletFeatures is EqualUnmodifiableListView) return _walletFeatures;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_walletFeatures);
  }

  final List<dynamic> _walletPolicies;
  @override
  @JsonKey(name: 'Wallet_policies')
  List<dynamic> get walletPolicies {
    if (_walletPolicies is EqualUnmodifiableListView) return _walletPolicies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_walletPolicies);
  }

  final List<Country> _countries;
  @override
  List<Country> get countries {
    if (_countries is EqualUnmodifiableListView) return _countries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_countries);
  }

  final List<City> _cities;
  @override
  List<City> get cities {
    if (_cities is EqualUnmodifiableListView) return _cities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cities);
  }

  final List<dynamic> _hotels;
  @override
  List<dynamic> get hotels {
    if (_hotels is EqualUnmodifiableListView) return _hotels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_hotels);
  }

  @override
  @JsonKey(name: 'accommodation_types')
  final dynamic accommodationTypes;

  @override
  String toString() {
    return 'WalletDetailModel(id: $id, walletCategoryId: $walletCategoryId, name: $name, order: $order, days: $days, availableDays: $availableDays, numbersOfDays: $numbersOfDays, price: $price, occupancy: $occupancy, minUnitPrice: $minUnitPrice, maxUnitPrice: $maxUnitPrice, currency: $currency, taxPercent: $taxPercent, active: $active, type: $type, description: $description, walletImage: $walletImage, expiryDate: $expiryDate, hotelStars: $hotelStars, walletCategory: $walletCategory, featuresFavorites: $featuresFavorites, walletFeatures: $walletFeatures, walletPolicies: $walletPolicies, countries: $countries, cities: $cities, hotels: $hotels, accommodationTypes: $accommodationTypes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletDetailModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.walletCategoryId, walletCategoryId) ||
                other.walletCategoryId == walletCategoryId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.days, days) || other.days == days) &&
            (identical(other.availableDays, availableDays) ||
                other.availableDays == availableDays) &&
            const DeepCollectionEquality()
                .equals(other._numbersOfDays, _numbersOfDays) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.occupancy, occupancy) ||
                other.occupancy == occupancy) &&
            (identical(other.minUnitPrice, minUnitPrice) ||
                other.minUnitPrice == minUnitPrice) &&
            (identical(other.maxUnitPrice, maxUnitPrice) ||
                other.maxUnitPrice == maxUnitPrice) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.taxPercent, taxPercent) ||
                other.taxPercent == taxPercent) &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.walletImage, walletImage) ||
                other.walletImage == walletImage) &&
            (identical(other.expiryDate, expiryDate) ||
                other.expiryDate == expiryDate) &&
            const DeepCollectionEquality()
                .equals(other._hotelStars, _hotelStars) &&
            (identical(other.walletCategory, walletCategory) ||
                other.walletCategory == walletCategory) &&
            const DeepCollectionEquality()
                .equals(other._featuresFavorites, _featuresFavorites) &&
            const DeepCollectionEquality()
                .equals(other._walletFeatures, _walletFeatures) &&
            const DeepCollectionEquality()
                .equals(other._walletPolicies, _walletPolicies) &&
            const DeepCollectionEquality()
                .equals(other._countries, _countries) &&
            const DeepCollectionEquality().equals(other._cities, _cities) &&
            const DeepCollectionEquality().equals(other._hotels, _hotels) &&
            const DeepCollectionEquality()
                .equals(other.accommodationTypes, accommodationTypes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        walletCategoryId,
        name,
        order,
        days,
        availableDays,
        const DeepCollectionEquality().hash(_numbersOfDays),
        price,
        occupancy,
        minUnitPrice,
        maxUnitPrice,
        currency,
        taxPercent,
        active,
        type,
        description,
        walletImage,
        expiryDate,
        const DeepCollectionEquality().hash(_hotelStars),
        walletCategory,
        const DeepCollectionEquality().hash(_featuresFavorites),
        const DeepCollectionEquality().hash(_walletFeatures),
        const DeepCollectionEquality().hash(_walletPolicies),
        const DeepCollectionEquality().hash(_countries),
        const DeepCollectionEquality().hash(_cities),
        const DeepCollectionEquality().hash(_hotels),
        const DeepCollectionEquality().hash(accommodationTypes)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WalletDetailModelImplCopyWith<_$WalletDetailModelImpl> get copyWith =>
      __$$WalletDetailModelImplCopyWithImpl<_$WalletDetailModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WalletDetailModelImplToJson(
      this,
    );
  }
}

abstract class _WalletDetailModel implements WalletDetailModel {
  const factory _WalletDetailModel(
      {required final int id,
      @JsonKey(name: 'wallet_category_id') required final int walletCategoryId,
      required final String name,
      required final int order,
      required final int days,
      @JsonKey(name: 'available_days') required final int availableDays,
      @JsonKey(name: 'numbers_of_days')
      required final List<DayOption> numbersOfDays,
      required final double price,
      required final int occupancy,
      @JsonKey(name: 'min_unit_price') required final double minUnitPrice,
      @JsonKey(name: 'max_unit_price') required final double maxUnitPrice,
      required final String currency,
      @JsonKey(name: 'tax_percent') required final double taxPercent,
      required final bool active,
      required final int type,
      required final String description,
      @JsonKey(name: 'wallet_image') required final String walletImage,
      @JsonKey(name: 'expiry_date') required final String expiryDate,
      @JsonKey(name: 'hotel_stars') required final List<dynamic> hotelStars,
      @JsonKey(name: 'wallet_category')
      required final WalletCategory walletCategory,
      @JsonKey(name: 'features_favorites')
      required final List<Feature> featuresFavorites,
      @JsonKey(name: 'Wallet_features')
      required final List<WalletFeature> walletFeatures,
      @JsonKey(name: 'Wallet_policies')
      required final List<dynamic> walletPolicies,
      required final List<Country> countries,
      required final List<City> cities,
      required final List<dynamic> hotels,
      @JsonKey(name: 'accommodation_types')
      required final dynamic accommodationTypes}) = _$WalletDetailModelImpl;

  factory _WalletDetailModel.fromJson(Map<String, dynamic> json) =
      _$WalletDetailModelImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'wallet_category_id')
  int get walletCategoryId;
  @override
  String get name;
  @override
  int get order;
  @override
  int get days;
  @override
  @JsonKey(name: 'available_days')
  int get availableDays;
  @override
  @JsonKey(name: 'numbers_of_days')
  List<DayOption> get numbersOfDays;
  @override
  double get price;
  @override
  int get occupancy;
  @override
  @JsonKey(name: 'min_unit_price')
  double get minUnitPrice;
  @override
  @JsonKey(name: 'max_unit_price')
  double get maxUnitPrice;
  @override
  String get currency;
  @override
  @JsonKey(name: 'tax_percent')
  double get taxPercent;
  @override
  bool get active;
  @override
  int get type;
  @override
  String get description;
  @override
  @JsonKey(name: 'wallet_image')
  String get walletImage;
  @override
  @JsonKey(name: 'expiry_date')
  String get expiryDate;
  @override
  @JsonKey(name: 'hotel_stars')
  List<dynamic> get hotelStars;
  @override
  @JsonKey(name: 'wallet_category')
  WalletCategory get walletCategory;
  @override
  @JsonKey(name: 'features_favorites')
  List<Feature> get featuresFavorites;
  @override
  @JsonKey(name: 'Wallet_features')
  List<WalletFeature> get walletFeatures;
  @override
  @JsonKey(name: 'Wallet_policies')
  List<dynamic> get walletPolicies;
  @override
  List<Country> get countries;
  @override
  List<City> get cities;
  @override
  List<dynamic> get hotels;
  @override
  @JsonKey(name: 'accommodation_types')
  dynamic get accommodationTypes;
  @override
  @JsonKey(ignore: true)
  _$$WalletDetailModelImplCopyWith<_$WalletDetailModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

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

Country _$CountryFromJson(Map<String, dynamic> json) {
  return _Country.fromJson(json);
}

/// @nodoc
mixin _$Country {
  int get id => throw _privateConstructorUsedError;
  int get apiId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get iso => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CountryCopyWith<Country> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountryCopyWith<$Res> {
  factory $CountryCopyWith(Country value, $Res Function(Country) then) =
      _$CountryCopyWithImpl<$Res, Country>;
  @useResult
  $Res call({int id, int apiId, String name, String iso});
}

/// @nodoc
class _$CountryCopyWithImpl<$Res, $Val extends Country>
    implements $CountryCopyWith<$Res> {
  _$CountryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? apiId = null,
    Object? name = null,
    Object? iso = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      apiId: null == apiId
          ? _value.apiId
          : apiId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      iso: null == iso
          ? _value.iso
          : iso // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CountryImplCopyWith<$Res> implements $CountryCopyWith<$Res> {
  factory _$$CountryImplCopyWith(
          _$CountryImpl value, $Res Function(_$CountryImpl) then) =
      __$$CountryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, int apiId, String name, String iso});
}

/// @nodoc
class __$$CountryImplCopyWithImpl<$Res>
    extends _$CountryCopyWithImpl<$Res, _$CountryImpl>
    implements _$$CountryImplCopyWith<$Res> {
  __$$CountryImplCopyWithImpl(
      _$CountryImpl _value, $Res Function(_$CountryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? apiId = null,
    Object? name = null,
    Object? iso = null,
  }) {
    return _then(_$CountryImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      apiId: null == apiId
          ? _value.apiId
          : apiId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      iso: null == iso
          ? _value.iso
          : iso // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CountryImpl implements _Country {
  const _$CountryImpl(
      {required this.id,
      required this.apiId,
      required this.name,
      required this.iso});

  factory _$CountryImpl.fromJson(Map<String, dynamic> json) =>
      _$$CountryImplFromJson(json);

  @override
  final int id;
  @override
  final int apiId;
  @override
  final String name;
  @override
  final String iso;

  @override
  String toString() {
    return 'Country(id: $id, apiId: $apiId, name: $name, iso: $iso)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.apiId, apiId) || other.apiId == apiId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.iso, iso) || other.iso == iso));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, apiId, name, iso);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CountryImplCopyWith<_$CountryImpl> get copyWith =>
      __$$CountryImplCopyWithImpl<_$CountryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CountryImplToJson(
      this,
    );
  }
}

abstract class _Country implements Country {
  const factory _Country(
      {required final int id,
      required final int apiId,
      required final String name,
      required final String iso}) = _$CountryImpl;

  factory _Country.fromJson(Map<String, dynamic> json) = _$CountryImpl.fromJson;

  @override
  int get id;
  @override
  int get apiId;
  @override
  String get name;
  @override
  String get iso;
  @override
  @JsonKey(ignore: true)
  _$$CountryImplCopyWith<_$CountryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

City _$CityFromJson(Map<String, dynamic> json) {
  return _City.fromJson(json);
}

/// @nodoc
mixin _$City {
  int get id => throw _privateConstructorUsedError;
  int get apiId => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_id')
  int get apiIdAlternate => throw _privateConstructorUsedError;
  int get countryId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CityCopyWith<City> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CityCopyWith<$Res> {
  factory $CityCopyWith(City value, $Res Function(City) then) =
      _$CityCopyWithImpl<$Res, City>;
  @useResult
  $Res call(
      {int id,
      int apiId,
      @JsonKey(name: 'api_id') int apiIdAlternate,
      int countryId,
      String name,
      String code});
}

/// @nodoc
class _$CityCopyWithImpl<$Res, $Val extends City>
    implements $CityCopyWith<$Res> {
  _$CityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? apiId = null,
    Object? apiIdAlternate = null,
    Object? countryId = null,
    Object? name = null,
    Object? code = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      apiId: null == apiId
          ? _value.apiId
          : apiId // ignore: cast_nullable_to_non_nullable
              as int,
      apiIdAlternate: null == apiIdAlternate
          ? _value.apiIdAlternate
          : apiIdAlternate // ignore: cast_nullable_to_non_nullable
              as int,
      countryId: null == countryId
          ? _value.countryId
          : countryId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CityImplCopyWith<$Res> implements $CityCopyWith<$Res> {
  factory _$$CityImplCopyWith(
          _$CityImpl value, $Res Function(_$CityImpl) then) =
      __$$CityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int apiId,
      @JsonKey(name: 'api_id') int apiIdAlternate,
      int countryId,
      String name,
      String code});
}

/// @nodoc
class __$$CityImplCopyWithImpl<$Res>
    extends _$CityCopyWithImpl<$Res, _$CityImpl>
    implements _$$CityImplCopyWith<$Res> {
  __$$CityImplCopyWithImpl(_$CityImpl _value, $Res Function(_$CityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? apiId = null,
    Object? apiIdAlternate = null,
    Object? countryId = null,
    Object? name = null,
    Object? code = null,
  }) {
    return _then(_$CityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      apiId: null == apiId
          ? _value.apiId
          : apiId // ignore: cast_nullable_to_non_nullable
              as int,
      apiIdAlternate: null == apiIdAlternate
          ? _value.apiIdAlternate
          : apiIdAlternate // ignore: cast_nullable_to_non_nullable
              as int,
      countryId: null == countryId
          ? _value.countryId
          : countryId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CityImpl implements _City {
  const _$CityImpl(
      {required this.id,
      required this.apiId,
      @JsonKey(name: 'api_id') required this.apiIdAlternate,
      required this.countryId,
      required this.name,
      required this.code});

  factory _$CityImpl.fromJson(Map<String, dynamic> json) =>
      _$$CityImplFromJson(json);

  @override
  final int id;
  @override
  final int apiId;
  @override
  @JsonKey(name: 'api_id')
  final int apiIdAlternate;
  @override
  final int countryId;
  @override
  final String name;
  @override
  final String code;

  @override
  String toString() {
    return 'City(id: $id, apiId: $apiId, apiIdAlternate: $apiIdAlternate, countryId: $countryId, name: $name, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.apiId, apiId) || other.apiId == apiId) &&
            (identical(other.apiIdAlternate, apiIdAlternate) ||
                other.apiIdAlternate == apiIdAlternate) &&
            (identical(other.countryId, countryId) ||
                other.countryId == countryId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, apiId, apiIdAlternate, countryId, name, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CityImplCopyWith<_$CityImpl> get copyWith =>
      __$$CityImplCopyWithImpl<_$CityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CityImplToJson(
      this,
    );
  }
}

abstract class _City implements City {
  const factory _City(
      {required final int id,
      required final int apiId,
      @JsonKey(name: 'api_id') required final int apiIdAlternate,
      required final int countryId,
      required final String name,
      required final String code}) = _$CityImpl;

  factory _City.fromJson(Map<String, dynamic> json) = _$CityImpl.fromJson;

  @override
  int get id;
  @override
  int get apiId;
  @override
  @JsonKey(name: 'api_id')
  int get apiIdAlternate;
  @override
  int get countryId;
  @override
  String get name;
  @override
  String get code;
  @override
  @JsonKey(ignore: true)
  _$$CityImplCopyWith<_$CityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CountryModel _$CountryModelFromJson(Map<String, dynamic> json) {
  return _CountryModel.fromJson(json);
}

/// @nodoc
mixin _$CountryModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CountryModelCopyWith<CountryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountryModelCopyWith<$Res> {
  factory $CountryModelCopyWith(
          CountryModel value, $Res Function(CountryModel) then) =
      _$CountryModelCopyWithImpl<$Res, CountryModel>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$CountryModelCopyWithImpl<$Res, $Val extends CountryModel>
    implements $CountryModelCopyWith<$Res> {
  _$CountryModelCopyWithImpl(this._value, this._then);

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
abstract class _$$CountryModelImplCopyWith<$Res>
    implements $CountryModelCopyWith<$Res> {
  factory _$$CountryModelImplCopyWith(
          _$CountryModelImpl value, $Res Function(_$CountryModelImpl) then) =
      __$$CountryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$CountryModelImplCopyWithImpl<$Res>
    extends _$CountryModelCopyWithImpl<$Res, _$CountryModelImpl>
    implements _$$CountryModelImplCopyWith<$Res> {
  __$$CountryModelImplCopyWithImpl(
      _$CountryModelImpl _value, $Res Function(_$CountryModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$CountryModelImpl(
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
class _$CountryModelImpl implements _CountryModel {
  const _$CountryModelImpl({required this.id, required this.name});

  factory _$CountryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CountryModelImplFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'CountryModel(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountryModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CountryModelImplCopyWith<_$CountryModelImpl> get copyWith =>
      __$$CountryModelImplCopyWithImpl<_$CountryModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CountryModelImplToJson(
      this,
    );
  }
}

abstract class _CountryModel implements CountryModel {
  const factory _CountryModel(
      {required final int id, required final String name}) = _$CountryModelImpl;

  factory _CountryModel.fromJson(Map<String, dynamic> json) =
      _$CountryModelImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$CountryModelImplCopyWith<_$CountryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WalletResponse _$WalletResponseFromJson(Map<String, dynamic> json) {
  return _WalletResponse.fromJson(json);
}

/// @nodoc
mixin _$WalletResponse {
  List<WalletModel> get data => throw _privateConstructorUsedError;
  List<Link> get links => throw _privateConstructorUsedError;
  Meta get meta => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WalletResponseCopyWith<WalletResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletResponseCopyWith<$Res> {
  factory $WalletResponseCopyWith(
          WalletResponse value, $Res Function(WalletResponse) then) =
      _$WalletResponseCopyWithImpl<$Res, WalletResponse>;
  @useResult
  $Res call({List<WalletModel> data, List<Link> links, Meta meta});

  $MetaCopyWith<$Res> get meta;
}

/// @nodoc
class _$WalletResponseCopyWithImpl<$Res, $Val extends WalletResponse>
    implements $WalletResponseCopyWith<$Res> {
  _$WalletResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? links = null,
    Object? meta = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<WalletModel>,
      links: null == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as List<Link>,
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MetaCopyWith<$Res> get meta {
    return $MetaCopyWith<$Res>(_value.meta, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WalletResponseImplCopyWith<$Res>
    implements $WalletResponseCopyWith<$Res> {
  factory _$$WalletResponseImplCopyWith(_$WalletResponseImpl value,
          $Res Function(_$WalletResponseImpl) then) =
      __$$WalletResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<WalletModel> data, List<Link> links, Meta meta});

  @override
  $MetaCopyWith<$Res> get meta;
}

/// @nodoc
class __$$WalletResponseImplCopyWithImpl<$Res>
    extends _$WalletResponseCopyWithImpl<$Res, _$WalletResponseImpl>
    implements _$$WalletResponseImplCopyWith<$Res> {
  __$$WalletResponseImplCopyWithImpl(
      _$WalletResponseImpl _value, $Res Function(_$WalletResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? links = null,
    Object? meta = null,
  }) {
    return _then(_$WalletResponseImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<WalletModel>,
      links: null == links
          ? _value._links
          : links // ignore: cast_nullable_to_non_nullable
              as List<Link>,
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WalletResponseImpl implements _WalletResponse {
  const _$WalletResponseImpl(
      {required final List<WalletModel> data,
      required final List<Link> links,
      required this.meta})
      : _data = data,
        _links = links;

  factory _$WalletResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$WalletResponseImplFromJson(json);

  final List<WalletModel> _data;
  @override
  List<WalletModel> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  final List<Link> _links;
  @override
  List<Link> get links {
    if (_links is EqualUnmodifiableListView) return _links;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_links);
  }

  @override
  final Meta meta;

  @override
  String toString() {
    return 'WalletResponse(data: $data, links: $links, meta: $meta)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletResponseImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            const DeepCollectionEquality().equals(other._links, _links) &&
            (identical(other.meta, meta) || other.meta == meta));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_data),
      const DeepCollectionEquality().hash(_links),
      meta);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WalletResponseImplCopyWith<_$WalletResponseImpl> get copyWith =>
      __$$WalletResponseImplCopyWithImpl<_$WalletResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WalletResponseImplToJson(
      this,
    );
  }
}

abstract class _WalletResponse implements WalletResponse {
  const factory _WalletResponse(
      {required final List<WalletModel> data,
      required final List<Link> links,
      required final Meta meta}) = _$WalletResponseImpl;

  factory _WalletResponse.fromJson(Map<String, dynamic> json) =
      _$WalletResponseImpl.fromJson;

  @override
  List<WalletModel> get data;
  @override
  List<Link> get links;
  @override
  Meta get meta;
  @override
  @JsonKey(ignore: true)
  _$$WalletResponseImplCopyWith<_$WalletResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Link _$LinkFromJson(Map<String, dynamic> json) {
  return _Link.fromJson(json);
}

/// @nodoc
mixin _$Link {
  String? get url => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;
  bool get active => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LinkCopyWith<Link> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LinkCopyWith<$Res> {
  factory $LinkCopyWith(Link value, $Res Function(Link) then) =
      _$LinkCopyWithImpl<$Res, Link>;
  @useResult
  $Res call({String? url, String label, bool active});
}

/// @nodoc
class _$LinkCopyWithImpl<$Res, $Val extends Link>
    implements $LinkCopyWith<$Res> {
  _$LinkCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? label = null,
    Object? active = null,
  }) {
    return _then(_value.copyWith(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LinkImplCopyWith<$Res> implements $LinkCopyWith<$Res> {
  factory _$$LinkImplCopyWith(
          _$LinkImpl value, $Res Function(_$LinkImpl) then) =
      __$$LinkImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? url, String label, bool active});
}

/// @nodoc
class __$$LinkImplCopyWithImpl<$Res>
    extends _$LinkCopyWithImpl<$Res, _$LinkImpl>
    implements _$$LinkImplCopyWith<$Res> {
  __$$LinkImplCopyWithImpl(_$LinkImpl _value, $Res Function(_$LinkImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? label = null,
    Object? active = null,
  }) {
    return _then(_$LinkImpl(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LinkImpl implements _Link {
  const _$LinkImpl(
      {required this.url, required this.label, required this.active});

  factory _$LinkImpl.fromJson(Map<String, dynamic> json) =>
      _$$LinkImplFromJson(json);

  @override
  final String? url;
  @override
  final String label;
  @override
  final bool active;

  @override
  String toString() {
    return 'Link(url: $url, label: $label, active: $active)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LinkImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.active, active) || other.active == active));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url, label, active);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LinkImplCopyWith<_$LinkImpl> get copyWith =>
      __$$LinkImplCopyWithImpl<_$LinkImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LinkImplToJson(
      this,
    );
  }
}

abstract class _Link implements Link {
  const factory _Link(
      {required final String? url,
      required final String label,
      required final bool active}) = _$LinkImpl;

  factory _Link.fromJson(Map<String, dynamic> json) = _$LinkImpl.fromJson;

  @override
  String? get url;
  @override
  String get label;
  @override
  bool get active;
  @override
  @JsonKey(ignore: true)
  _$$LinkImplCopyWith<_$LinkImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Meta _$MetaFromJson(Map<String, dynamic> json) {
  return _Meta.fromJson(json);
}

/// @nodoc
mixin _$Meta {
  @JsonKey(name: 'current_page')
  int get currentPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_page')
  int get lastPage => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  @JsonKey(name: 'per_page')
  int get perPage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MetaCopyWith<Meta> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetaCopyWith<$Res> {
  factory $MetaCopyWith(Meta value, $Res Function(Meta) then) =
      _$MetaCopyWithImpl<$Res, Meta>;
  @useResult
  $Res call(
      {@JsonKey(name: 'current_page') int currentPage,
      @JsonKey(name: 'last_page') int lastPage,
      int total,
      @JsonKey(name: 'per_page') int perPage});
}

/// @nodoc
class _$MetaCopyWithImpl<$Res, $Val extends Meta>
    implements $MetaCopyWith<$Res> {
  _$MetaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = null,
    Object? lastPage = null,
    Object? total = null,
    Object? perPage = null,
  }) {
    return _then(_value.copyWith(
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      lastPage: null == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MetaImplCopyWith<$Res> implements $MetaCopyWith<$Res> {
  factory _$$MetaImplCopyWith(
          _$MetaImpl value, $Res Function(_$MetaImpl) then) =
      __$$MetaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'current_page') int currentPage,
      @JsonKey(name: 'last_page') int lastPage,
      int total,
      @JsonKey(name: 'per_page') int perPage});
}

/// @nodoc
class __$$MetaImplCopyWithImpl<$Res>
    extends _$MetaCopyWithImpl<$Res, _$MetaImpl>
    implements _$$MetaImplCopyWith<$Res> {
  __$$MetaImplCopyWithImpl(_$MetaImpl _value, $Res Function(_$MetaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = null,
    Object? lastPage = null,
    Object? total = null,
    Object? perPage = null,
  }) {
    return _then(_$MetaImpl(
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      lastPage: null == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MetaImpl implements _Meta {
  const _$MetaImpl(
      {@JsonKey(name: 'current_page') required this.currentPage,
      @JsonKey(name: 'last_page') required this.lastPage,
      required this.total,
      @JsonKey(name: 'per_page') required this.perPage});

  factory _$MetaImpl.fromJson(Map<String, dynamic> json) =>
      _$$MetaImplFromJson(json);

  @override
  @JsonKey(name: 'current_page')
  final int currentPage;
  @override
  @JsonKey(name: 'last_page')
  final int lastPage;
  @override
  final int total;
  @override
  @JsonKey(name: 'per_page')
  final int perPage;

  @override
  String toString() {
    return 'Meta(currentPage: $currentPage, lastPage: $lastPage, total: $total, perPage: $perPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MetaImpl &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.lastPage, lastPage) ||
                other.lastPage == lastPage) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.perPage, perPage) || other.perPage == perPage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, currentPage, lastPage, total, perPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MetaImplCopyWith<_$MetaImpl> get copyWith =>
      __$$MetaImplCopyWithImpl<_$MetaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MetaImplToJson(
      this,
    );
  }
}

abstract class _Meta implements Meta {
  const factory _Meta(
      {@JsonKey(name: 'current_page') required final int currentPage,
      @JsonKey(name: 'last_page') required final int lastPage,
      required final int total,
      @JsonKey(name: 'per_page') required final int perPage}) = _$MetaImpl;

  factory _Meta.fromJson(Map<String, dynamic> json) = _$MetaImpl.fromJson;

  @override
  @JsonKey(name: 'current_page')
  int get currentPage;
  @override
  @JsonKey(name: 'last_page')
  int get lastPage;
  @override
  int get total;
  @override
  @JsonKey(name: 'per_page')
  int get perPage;
  @override
  @JsonKey(ignore: true)
  _$$MetaImplCopyWith<_$MetaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WalletDetailResponse _$WalletDetailResponseFromJson(Map<String, dynamic> json) {
  return _WalletDetailResponse.fromJson(json);
}

/// @nodoc
mixin _$WalletDetailResponse {
  WalletDetailModel get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WalletDetailResponseCopyWith<WalletDetailResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletDetailResponseCopyWith<$Res> {
  factory $WalletDetailResponseCopyWith(WalletDetailResponse value,
          $Res Function(WalletDetailResponse) then) =
      _$WalletDetailResponseCopyWithImpl<$Res, WalletDetailResponse>;
  @useResult
  $Res call({WalletDetailModel data});

  $WalletDetailModelCopyWith<$Res> get data;
}

/// @nodoc
class _$WalletDetailResponseCopyWithImpl<$Res,
        $Val extends WalletDetailResponse>
    implements $WalletDetailResponseCopyWith<$Res> {
  _$WalletDetailResponseCopyWithImpl(this._value, this._then);

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
              as WalletDetailModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WalletDetailModelCopyWith<$Res> get data {
    return $WalletDetailModelCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WalletDetailResponseImplCopyWith<$Res>
    implements $WalletDetailResponseCopyWith<$Res> {
  factory _$$WalletDetailResponseImplCopyWith(_$WalletDetailResponseImpl value,
          $Res Function(_$WalletDetailResponseImpl) then) =
      __$$WalletDetailResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({WalletDetailModel data});

  @override
  $WalletDetailModelCopyWith<$Res> get data;
}

/// @nodoc
class __$$WalletDetailResponseImplCopyWithImpl<$Res>
    extends _$WalletDetailResponseCopyWithImpl<$Res, _$WalletDetailResponseImpl>
    implements _$$WalletDetailResponseImplCopyWith<$Res> {
  __$$WalletDetailResponseImplCopyWithImpl(_$WalletDetailResponseImpl _value,
      $Res Function(_$WalletDetailResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$WalletDetailResponseImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as WalletDetailModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WalletDetailResponseImpl implements _WalletDetailResponse {
  const _$WalletDetailResponseImpl({required this.data});

  factory _$WalletDetailResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$WalletDetailResponseImplFromJson(json);

  @override
  final WalletDetailModel data;

  @override
  String toString() {
    return 'WalletDetailResponse(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletDetailResponseImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WalletDetailResponseImplCopyWith<_$WalletDetailResponseImpl>
      get copyWith =>
          __$$WalletDetailResponseImplCopyWithImpl<_$WalletDetailResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WalletDetailResponseImplToJson(
      this,
    );
  }
}

abstract class _WalletDetailResponse implements WalletDetailResponse {
  const factory _WalletDetailResponse({required final WalletDetailModel data}) =
      _$WalletDetailResponseImpl;

  factory _WalletDetailResponse.fromJson(Map<String, dynamic> json) =
      _$WalletDetailResponseImpl.fromJson;

  @override
  WalletDetailModel get data;
  @override
  @JsonKey(ignore: true)
  _$$WalletDetailResponseImplCopyWith<_$WalletDetailResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

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
