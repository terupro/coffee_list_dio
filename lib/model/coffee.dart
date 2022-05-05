import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'coffee.freezed.dart';
part 'coffee.g.dart';

// APIから取得したい内容のクラスを作成

@freezed
class Coffee with _$Coffee {
  factory Coffee({
    String? title,
    String? description,
  }) = _Coffee;

  factory Coffee.fromJson(Map<String, dynamic> json) => _$CoffeeFromJson(json);
}
