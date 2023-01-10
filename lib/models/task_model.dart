// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/material.dart';

class Task {
  final String title;
  final bool completed;
  final String body;

  Task({
    required this.title,
    required this.completed,
    required this.body,
  });

  Task copyWith({
    String? title,
    bool? completed,
    String? body,
  }) {
    return Task(
      title: title ?? this.title,
      completed: completed ?? this.completed,
      body: body ?? this.body,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'completed': completed,
      'body': body,
    };
  }

  factory Task.fromMap(Map<String, dynamic> map) {
    return Task(
      title: map['title'] as String,
      completed: map['completed'] as bool,
      body: map['body'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Task.fromJson(String source) =>
      Task.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Task(title: $title, completed: $completed, body: $body)';

  @override
  bool operator ==(covariant Task other) {
    if (identical(this, other)) return true;
  
    return 
      other.title == title &&
      other.completed == completed &&
      other.body == body;
  }

  @override
  int get hashCode => title.hashCode ^ completed.hashCode ^ body.hashCode;
}
