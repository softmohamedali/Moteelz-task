import 'package:freezed_annotation/freezed_annotation.dart';


@JsonSerializable()
class WalletResponse {
  final List<Wallet> data;
  final List<Link> links;
  final Meta meta;

  WalletResponse({required this.data, required this.links, required this.meta});

  // factory WalletResponse.fromJson(Map<String, dynamic> json) =>
  //     _$WalletResponseFromJson(json);
}

@JsonSerializable()
class Wallet {
  final int id;
  final String name;
  final int availableDays;
  final List<NumberOfDays> numbersOfDays;
  final int price;
  final String currency;
  final String walletImage;
  final String expiryDate;
  final WalletCategory walletCategory;
  final List<Feature> featuresFavorites;

  Wallet({
    required this.id,
    required this.name,
    required this.availableDays,
    required this.numbersOfDays,
    required this.price,
    required this.currency,
    required this.walletImage,
    required this.expiryDate,
    required this.walletCategory,
    required this.featuresFavorites,
  });

  // factory Wallet.fromJson(Map<String, dynamic> json) => _$WalletFromJson(json);
}

@JsonSerializable()
class NumberOfDays {
  final String days;
  final String expiryDays;
  final String expiryDate;

  NumberOfDays({
    required this.days,
    required this.expiryDays,
    required this.expiryDate,
  });

  // factory NumberOfDays.fromJson(Map<String, dynamic> json) =>
  //     _$NumberOfDaysFromJson(json);
}

@JsonSerializable()
class WalletCategory {
  final String name;

  WalletCategory({required this.name});

  // factory WalletCategory.fromJson(Map<String, dynamic> json) =>
  //     _$WalletCategoryFromJson(json);
}

@JsonSerializable()
class Feature {
  final String name;

  Feature({required this.name});

  // factory Feature.fromJson(Map<String, dynamic> json) => _$FeatureFromJson(json);
}

@JsonSerializable()
class Link {
  final String? url;
  final String label;
  final bool active;

  Link({this.url, required this.label, required this.active});

  // factory Link.fromJson(Map<String, dynamic> json) => _$LinkFromJson(json);
}

@JsonSerializable()
class Meta {
  final int currentPage;
  final String firstPageUrl;
  final int from;
  final int lastPage;
  final String lastPageUrl;
  final String? nextPageUrl;
  final String path;
  final int perPage;
  final String? prevPageUrl;
  final int to;
  final int total;

  Meta({
    required this.currentPage,
    required this.firstPageUrl,
    required this.from,
    required this.lastPage,
    required this.lastPageUrl,
    this.nextPageUrl,
    required this.path,
    required this.perPage,
    this.prevPageUrl,
    required this.to,
    required this.total,
  });

  // factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);
}