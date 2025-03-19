import 'package:dartz/dartz.dart';
import '../../core/error/failure.dart';
import '../../data/dto/wallet_model.dart';
import '../repositories/wallet_repository.dart';

class GetWalletDetails {
  final WalletRepository repository;

  GetWalletDetails(this.repository);

  Future<Either<Failure, WalletDetailModel>> call(int walletId) async {
    return await repository.getWalletDetails(walletId);
  }
}