import 'package:freezed_annotation/freezed_annotation.dart';
part 'disscount_list_state.freezed.dart';

@unfreezed
class DisscountListState with _$DisscountListState {
  factory DisscountListState({
    @Default(0) int counter,
  }) = _DisscountListState;
}
