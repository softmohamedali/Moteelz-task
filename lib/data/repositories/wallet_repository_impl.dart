import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../core/error/failure.dart';
import '../../domain/repositories/wallet_repository.dart';
import '../api/api_client.dart';
import '../dto/country_reponse/country_model/country_model.dart';
import '../dto/wallet_details_response/wallet_details_model/wallet_details_model.dart';
import '../dto/wallets_response/wallet_model/wallet_model.dart';

class WalletRepositoryImpl implements WalletRepository {
  final ApiClient _apiClient;

  WalletRepositoryImpl(this._apiClient);

  @override
  Future<Either<Failure, List<WalletModel>>> getWallets({
    String? name,
    double? minPrice,
    double? maxPrice,
    int? countryId,
  }) async {
    try {
      final response = await _apiClient.getWallets(
        name: name,
        minPrice: minPrice,
        maxPrice: maxPrice,
        countryId: countryId,
      );
      return Right(response.data);
    } on DioException catch (e) {
      return Left(ServerFailure(e.message ?? 'Server error'));
    } catch (e) {
      return Left(GeneralFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, WalletDetailModel>> getWalletDetails(int id) async {
    try {
      final response = await _apiClient.getWalletDetails(id);
      return Right(response.data);
    } on DioException catch (e) {
      return Left(ServerFailure(e.message ?? 'Server error'));
    } catch (e) {
      return Left(GeneralFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<CountryModel>>> getCountries() async {
    try {
      final response = await _apiClient.getCountries();
      return Right(response.data);
    } on DioException catch (e) {
      return Left(ServerFailure(e.message ?? 'Server error'));
    } catch (e) {
      return Left(GeneralFailure(e.toString()));
    }
  }
}