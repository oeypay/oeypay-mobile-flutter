import 'provider.dart';

class CategoriesModel {
  String? id;
  String? name;
  dynamic deletedAt;
  List<Provider>? provider;
  String? createdAt;
  DateTime? updatedAt;

  CategoriesModel({
    this.id,
    this.name,
    this.deletedAt,
    this.provider,
    this.createdAt,
    this.updatedAt,
  });

  factory CategoriesModel.fromJson(Map<String, dynamic> json) {
    return CategoriesModel(
      id: json['id'] as String?,
      name: json['name'] as String?,
      deletedAt: json['deleted_at'] as dynamic,
      provider: (json['provider'] as List<dynamic>?)
          ?.map((e) => Provider.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'deleted_at': deletedAt,
        'provider': provider?.map((e) => e.toJson()).toList(),
        'created_at': createdAt,
        'updated_at': updatedAt?.toIso8601String(),
      };
}
