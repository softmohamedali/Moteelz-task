import 'package:dartz/dartz.dart';
import '../../core/error/failure.dart';
import '../entity/wallet_entity.dart';
import '../repositories/wallet_repository.dart';

class GetWallets {
  final WalletRepository repository;

  GetWallets(this.repository);

  Future<Either<Failure, List<WalletEntity>>> call() async {
    return await repository.getWallets();
  }
}