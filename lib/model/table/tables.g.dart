// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tables.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TablesImpl _$$TablesImplFromJson(Map<String, dynamic> json) => _$TablesImpl(
      id: json['id'] as int?,
      ownerId: json['owner_id'] as int?,
      tableNumber: json['table_number'] as int?,
      orderId: json['order_id'] as int?,
      status: json['status'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$TablesImplToJson(_$TablesImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'owner_id': instance.ownerId,
      'table_number': instance.tableNumber,
      'order_id': instance.orderId,
      'status': instance.status,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
