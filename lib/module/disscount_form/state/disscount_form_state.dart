import 'package:freezed_annotation/freezed_annotation.dart';
part 'disscount_form_state.freezed.dart';

@unfreezed
class DisscountFormState with _$DisscountFormState {
  factory DisscountFormState({
    @Default(0) int counter,
  }) = _DisscountFormState;
}
