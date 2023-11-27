import 'package:freezed_annotation/freezed_annotation.dart';
part 'report_state.freezed.dart';

@unfreezed
class ReportState with _$ReportState {
  factory ReportState({
    @Default(0) int counter,
  }) = _ReportState;
}
