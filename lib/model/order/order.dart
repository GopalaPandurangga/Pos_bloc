import 'package:freezed_annotation/freezed_annotation.dart';

import 'order_detail.dart';

part 'order.freezed.dart';
part 'order.g.dart';

@freezed
class Order with _$Order {
  factory Order({
    int? id,
    @JsonKey(name: 'owner_id') int? ownerId,
    @JsonKey(name: 'table_number') int? tableNumber,
    int? total,
    String? status,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    @JsonKey(name: 'order_detail') List<OrderDetail>? orderDetail,
  }) = _Order;

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);
}
