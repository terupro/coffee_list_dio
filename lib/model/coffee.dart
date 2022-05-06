import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

// build_runnerを使うことで自動生成されるファイル
part 'coffee.freezed.dart';
part 'coffee.g.dart';

@freezed
class Coffee with _$Coffee {
  factory Coffee({
    String? title,
    String? description,
  }) = _Coffee;

  factory Coffee.fromJson(Map<String, dynamic> json) => _$CoffeeFromJson(json);
}
