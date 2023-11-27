import 'package:freezed_annotation/freezed_annotation.dart';

part 'tables.freezed.dart';
part 'tables.g.dart';

@unfreezed
class Tables with _$Tables {
  factory Tables({
    int? id,
    @JsonKey(name: 'owner_id') int? ownerId,
    @JsonKey(name: 'table_number') int? tableNumber,
    @JsonKey(name: 'order_id') int? orderId,
    String? status,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _Tables;

  factory Tables.fromJson(Map<String, dynamic> json) => _$TablesFromJson(json);
}
