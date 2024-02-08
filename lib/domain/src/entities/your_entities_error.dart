import 'dart:convert';

import 'package:equatable/equatable.dart';

class YourAppError extends Equatable {
  final String? error;
  final int? code;
  final String? message;
  const YourAppError({
    this.code,
    this.message,
    this.error,
  });

  @override
  List<Object?> get props => [error];

  Map<String, dynamic> toMap() {
    return {
      'code': code,
      'message': message,
      'error': error,
    };
  }

  factory YourAppError.fromMap(Map<String, dynamic> map) {
    return YourAppError(
      code: map['code'],
      message: map['message'],
      error: map['error'],
    );
  }

  String toJson() => json.encode(toMap());

  factory YourAppError.fromJson(String source) =>
      YourAppError.fromMap(json.decode(source));
}
