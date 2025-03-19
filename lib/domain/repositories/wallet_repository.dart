import 'package:dartz/dartz.dart';

import '../../core/error/failure.dart';
import '../../data/dto/wallet_model.dart';

abstract class WalletRepository {
  Future<Either<Failure, List<WalletModel>>> getWallets({
    String? name,
    double? minPrice,
    double? maxPrice,
    int? countryId,
  });

  Future<Either<Failure, WalletDetailModel>> getWalletDetails(int id);

  Future<Either<Failure, List<CountryModel>>> getCountries();
}
