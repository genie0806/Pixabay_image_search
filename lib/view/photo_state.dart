import 'package:image_search/model/search_model.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'photo_state.freezed.dart';

@freezed
class PhotoState with _$PhotoState {
  factory PhotoState({SearchModel searchModel}) = _PhotoState;
}
