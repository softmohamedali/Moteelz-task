import 'package:dartz/dartz.dart';

import '../../core/error/failure.dart';
import '../../data/dto/country_reponse/country_model/country_model.dart';
import '../../data/dto/wallet_details_response/wallet_details_model/wallet_details_model.dart';
import '../../data/dto/wallets_response/wallet_model/wallet_model.dart';

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
