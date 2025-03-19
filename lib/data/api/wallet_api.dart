import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import '../dto/wallet_response.freezed.dart';

@RestApi(baseUrl: "https://stage-api-v2.moteelz.com/api/v1/")
abstract class WalletApi {
  // factory WalletApi(Dio dio, {String baseUrl}) = _WalletApi;

  @GET("wallets")
  Future<WalletResponse> getWallets();
}