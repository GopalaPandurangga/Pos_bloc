import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../model/table/tables.dart';
part 'table_state.freezed.dart';

@unfreezed
class TableState with _$TableState {
  factory TableState({
    @Default(0) int counter,
    @Default([]) List<Tables> tabletList,
  }) = _TableState;
}
