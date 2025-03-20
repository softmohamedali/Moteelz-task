
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';


part 'link.freezed.dart';
part 'link.g.dart';

@freezed
class Link with _$Link {
  const factory Link({
    required String? url,
    required String label,
    required bool active,
  }) = _Link;

  factory Link.fromJson(Map<String, dynamic> json) => _$LinkFromJson(json);
}