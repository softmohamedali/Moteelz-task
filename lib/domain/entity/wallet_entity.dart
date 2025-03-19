class WalletEntity {
  final int id;
  final String name;
  final int availableDays;
  final List<NumberOfDaysEntity> numbersOfDays;
  final int price;
  final String currency;
  final String walletImage;
  final String expiryDate;
  final WalletCategoryEntity walletCategory;
  final List<FeatureEntity> featuresFavorites;

  WalletEntity({
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
}

class NumberOfDaysEntity {
  final String days;
  final String expiryDays;
  final String expiryDate;

  NumberOfDaysEntity({
    required this.days,
    required this.expiryDays,
    required this.expiryDate,
  });
}

class WalletCategoryEntity {
  final String name;

  WalletCategoryEntity({required this.name});
}

class FeatureEntity {
  final String name;

  FeatureEntity({required this.name});
}