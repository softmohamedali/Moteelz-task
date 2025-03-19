import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../dto/wallet_model.dart';

part 'api_client.g.dart';

@RestApi(baseUrl: "https://stage-api-v2.moteelz.com/api/v1")
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @GET("/wallets")
  Future<WalletResponse> getWallets({
    @Query("name") String? name,
    @Query("min_price") double? minPrice,
    @Query("max_price") double? maxPrice,
    @Query("country_id") int? countryId,
  });

  @GET("/wallet/details/{id}")
  Future<WalletDetailResponse> getWalletDetails(@Path("id") int id);

  @GET("/filter/countries")
  Future<CountryResponse> getCountries();
}