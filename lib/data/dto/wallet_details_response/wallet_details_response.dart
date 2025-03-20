
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:moteelz/data/dto/wallet_details_response/wallet_details_model/wallet_details_model.dart';


part 'wallet_details_response.freezed.dart';
part 'wallet_details_response.g.dart';

@freezed
class WalletDetailResponse with _$WalletDetailResponse {
  const factory WalletDetailResponse({
    required WalletDetailModel data,
  }) = _WalletDetailResponse;

  factory WalletDetailResponse.fromJson(Map<String, dynamic> json) => _$WalletDetailResponseFromJson(json);
}