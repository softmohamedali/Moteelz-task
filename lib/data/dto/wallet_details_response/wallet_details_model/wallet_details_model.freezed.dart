// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
