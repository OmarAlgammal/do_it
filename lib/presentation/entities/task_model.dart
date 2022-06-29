
import 'package:freezed_annotation/freezed_annotation.dart';


part 'task_model.freezed.dart';
part 'task_model.g.dart';

@freezed
class TaskModel with _$TaskModel{

  factory TaskModel({
    required String title,
    @Default(false) bool isDone,
    @Default(false) bool addToMyDay,
    @Default(false) bool repeatDaily,
    required String note,
    }) = _TaskModel;


  factory TaskModel.fromJson(Map<String, Object?> map) => _$TaskModelFromJson(map);
}