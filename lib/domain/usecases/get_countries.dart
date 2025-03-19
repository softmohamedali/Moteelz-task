import 'package:dartz/dartz.dart';

import '../../core/error/failure.dart';
import '../../data/dto/wallet_model.dart';
import '../repositories/wallet_repository.dart';

class GetCountries {
  final WalletRepository repository;

  GetCountries(this.repository);

  Future<Either<Failure, List<CountryModel>>> call() async {
    return await repository.getCountries();
  }
}