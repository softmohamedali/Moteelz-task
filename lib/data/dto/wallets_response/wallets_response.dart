import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:moteelz/data/dto/wallets_response/wallet_model/wallet_model.dart';
import 'meta/meta.dart';
import 'link/link.dart';

part 'wallets_response.freezed.dart';
part 'wallets_response.g.dart';

@freezed
class WalletResponse with _$WalletResponse {
  const factory WalletResponse({
    required List<WalletModel> data,
    required List<Link> links,
    required Meta meta,
  }) = _WalletResponse;

  factory WalletResponse.fromJson(Map<String, dynamic> json) => _$WalletResponseFromJson(json);
}