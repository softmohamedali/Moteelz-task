import 'package:dartz/dartz.dart';

import '../../core/error/failure.dart';
import '../../data/dto/wallets_response/wallet_model/wallet_model.dart';
import '../repositories/wallet_repository.dart';

class GetWalletsParams {
  final String? name;
  final double? minPrice;
  final double? maxPrice;
  final int? countryId;

  GetWalletsParams({
    this.name,
    this.minPrice,
    this.maxPrice,
    this.countryId,
  });
}

class GetWallets {
  final WalletRepository repository;

  GetWallets(this.repository);

  Future<Either<Failure, List<WalletModel>>> call(GetWalletsParams params) async {
    return await repository.getWallets(
      name: params.name,
      minPrice: params.minPrice,
      maxPrice: params.maxPrice,
      countryId: params.countryId,
    );
  }
}