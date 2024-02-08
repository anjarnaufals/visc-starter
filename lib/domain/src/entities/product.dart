import 'dart:convert';

import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final String? name;
  final int? qty;

  const Product({this.name, this.qty});

  factory Product.fromMap(Map<String, dynamic> data) => Product(
        name: data['name'] as String?,
        qty: data['qty'] as int?,
      );

  Map<String, dynamic> toMap() => {
        'name': name,
        'qty': qty,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Product].
  factory Product.fromJson(String data) {
    return Product.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Product] to a JSON string.
  String toJson() => json.encode(toMap());

  Product copyWith({
    String? name,
    int? qty,
  }) {
    return Product(
      name: name ?? this.name,
      qty: qty ?? this.qty,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [name, qty];
}
