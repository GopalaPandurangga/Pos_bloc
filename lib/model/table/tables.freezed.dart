// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tables.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Tables _$TablesFromJson(Map<String, dynamic> json) {
  return _Tables.fromJson(json);
}

/// @nodoc
mixin _$Tables {
  int? get id => throw _privateConstructorUsedError;
  set id(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'owner_id')
  int? get ownerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'owner_id')
  set ownerId(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'table_number')
  int? get tableNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'table_number')
  set tableNumber(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_id')
  int? get orderId => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_id')
  set orderId(int? value) => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  set status(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  set createdAt(DateTime? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  set updatedAt(DateTime? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TablesCopyWith<Tables> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TablesCopyWith<$Res> {
  factory $TablesCopyWith(Tables value, $Res Function(Tables) then) =
      _$TablesCopyWithImpl<$Res, Tables>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'owner_id') int? ownerId,
      @JsonKey(name: 'table_number') int? tableNumber,
      @JsonKey(name: 'order_id') int? orderId,
      String? status,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class _$TablesCopyWithImpl<$Res, $Val extends Tables>
    implements $TablesCopyWith<$Res> {
  _$TablesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? ownerId = freezed,
    Object? tableNumber = freezed,
    Object? orderId = freezed,
    Object? status = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      ownerId: freezed == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as int?,
      tableNumber: freezed == tableNumber
          ? _value.tableNumber
          : tableNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TablesImplCopyWith<$Res> implements $TablesCopyWith<$Res> {
  factory _$$TablesImplCopyWith(
          _$TablesImpl value, $Res Function(_$TablesImpl) then) =
      __$$TablesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'owner_id') int? ownerId,
      @JsonKey(name: 'table_number') int? tableNumber,
      @JsonKey(name: 'order_id') int? orderId,
      String? status,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class __$$TablesImplCopyWithImpl<$Res>
    extends _$TablesCopyWithImpl<$Res, _$TablesImpl>
    implements _$$TablesImplCopyWith<$Res> {
  __$$TablesImplCopyWithImpl(
      _$TablesImpl _value, $Res Function(_$TablesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? ownerId = freezed,
    Object? tableNumber = freezed,
    Object? orderId = freezed,
    Object? status = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$TablesImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      ownerId: freezed == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as int?,
      tableNumber: freezed == tableNumber
          ? _value.tableNumber
          : tableNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TablesImpl implements _Tables {
  _$TablesImpl(
      {this.id,
      @JsonKey(name: 'owner_id') this.ownerId,
      @JsonKey(name: 'table_number') this.tableNumber,
      @JsonKey(name: 'order_id') this.orderId,
      this.status,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt});

  factory _$TablesImpl.fromJson(Map<String, dynamic> json) =>
      _$$TablesImplFromJson(json);

  @override
  int? id;
  @override
  @JsonKey(name: 'owner_id')
  int? ownerId;
  @override
  @JsonKey(name: 'table_number')
  int? tableNumber;
  @override
  @JsonKey(name: 'order_id')
  int? orderId;
  @override
  String? status;
  @override
  @JsonKey(name: 'created_at')
  DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? updatedAt;

  @override
  String toString() {
    return 'Tables(id: $id, ownerId: $ownerId, tableNumber: $tableNumber, orderId: $orderId, status: $status, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TablesImplCopyWith<_$TablesImpl> get copyWith =>
      __$$TablesImplCopyWithImpl<_$TablesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TablesImplToJson(
      this,
    );
  }
}

abstract class _Tables implements Tables {
  factory _Tables(
      {int? id,
      @JsonKey(name: 'owner_id') int? ownerId,
      @JsonKey(name: 'table_number') int? tableNumber,
      @JsonKey(name: 'order_id') int? orderId,
      String? status,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt}) = _$TablesImpl;

  factory _Tables.fromJson(Map<String, dynamic> json) = _$TablesImpl.fromJson;

  @override
  int? get id;
  set id(int? value);
  @override
  @JsonKey(name: 'owner_id')
  int? get ownerId;
  @JsonKey(name: 'owner_id')
  set ownerId(int? value);
  @override
  @JsonKey(name: 'table_number')
  int? get tableNumber;
  @JsonKey(name: 'table_number')
  set tableNumber(int? value);
  @override
  @JsonKey(name: 'order_id')
  int? get orderId;
  @JsonKey(name: 'order_id')
  set orderId(int? value);
  @override
  String? get status;
  set status(String? value);
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @JsonKey(name: 'created_at')
  set createdAt(DateTime? value);
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @JsonKey(name: 'updated_at')
  set updatedAt(DateTime? value);
  @override
  @JsonKey(ignore: true)
  _$$TablesImplCopyWith<_$TablesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
