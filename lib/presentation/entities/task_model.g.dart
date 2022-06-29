// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TaskModel _$$_TaskModelFromJson(Map<String, dynamic> json) => _$_TaskModel(
      title: json['title'] as String,
      isDone: json['isDone'] as bool? ?? false,
      addToMyDay: json['addToMyDay'] as bool? ?? false,
      repeatDaily: json['repeatDaily'] as bool? ?? false,
      note: json['note'] as String,
    );

Map<String, dynamic> _$$_TaskModelToJson(_$_TaskModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'isDone': instance.isDone,
      'addToMyDay': instance.addToMyDay,
      'repeatDaily': instance.repeatDaily,
      'note': instance.note,
    };
