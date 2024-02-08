import 'dart:convert';

import 'package:equatable/equatable.dart';

class GeneralMessage extends Equatable {
  final int? code;
  final String? message;
  final dynamic data;

  const GeneralMessage({this.code, this.message, this.data});

  factory GeneralMessage.fromMap(Map<String, dynamic> data) {
    return GeneralMessage(
      code: data['code'] as int?,
      message: data['message'] as String?,
      data: data['data'] == null ? null : data['data'] as dynamic,
    );
  }

  Map<String, dynamic> toMap() => {
        'code': code,
        'message': message,
        'data': data?.toMap(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [GeneralMessage].
  factory GeneralMessage.fromJson(String data) {
    return GeneralMessage.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [GeneralMessage] to a JSON string.
  String toJson() => json.encode(toMap());

  GeneralMessage copyWith({
    int? code,
    String? message,
    dynamic data,
  }) {
    return GeneralMessage(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [code, message, data];
}
