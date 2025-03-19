
import 'package:dartz/dartz.dart';

import '../../core/error/failure.dart';
import '../entity/wallet_entity.dart';

abstract class WalletRepository {
  Future<Either<Failure, List<WalletEntity>>> getWallets();
}