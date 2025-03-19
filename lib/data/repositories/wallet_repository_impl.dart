import 'package:dartz/dartz.dart';
import '../../core/error/failure.dart';
import '../../domain/entity/wallet_entity.dart';
import '../../domain/repositories/wallet_repository.dart';
import '../api/wallet_api.dart';

//basic imp not final

class WalletRepositoryImpl implements WalletRepository {
  final WalletApi _walletApi;

  WalletRepositoryImpl(this._walletApi);

  @override
  Future<Either<Failure, List<WalletEntity>>> getWallets() async {
    try {
      final response = await _walletApi.getWallets();
      final wallets = response.data.map((walletModel) {
        return WalletEntity(
          id: walletModel.id,
          name: walletModel.name,
          availableDays: walletModel.availableDays,
          numbersOfDays: walletModel.numbersOfDays.map((day) => NumberOfDaysEntity(
            days: day.days,
            expiryDays: day.expiryDays,
            expiryDate: day.expiryDate,
          )).toList(),
          price: walletModel.price,
          currency: walletModel.currency,
          walletImage: walletModel.walletImage,
          expiryDate: walletModel.expiryDate,
          walletCategory: WalletCategoryEntity(name: walletModel.walletCategory.name),
          featuresFavorites: walletModel.featuresFavorites.map((feature) => FeatureEntity(name: feature.name)).toList(),
        );
      }).toList();

      return Right(wallets);
    } catch (e) {
      return Left(ServerFailure('Failed to fetch wallets: $e'));
    }
  }
}