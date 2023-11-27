import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../model/table/tables.dart';
part 'pos_table_state.freezed.dart';

@unfreezed
class PosTableState with _$PosTableState {
  factory PosTableState({
    @Default(0) int counter,
    @Default([]) List<Tables> tabletList,
  }) = _PosTableState;
}
