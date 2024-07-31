import 'dart:convert';

class CategoryResponseModel {
  final int? status;
  final String? message;
  final List<Category>? data;

  CategoryResponseModel({
    this.status,
    this.message,
    this.data,
  });

  factory CategoryResponseModel.fromJson(String str) =>
      CategoryResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory CategoryResponseModel.fromMap(Map<String, dynamic> json) =>
      CategoryResponseModel(
        status: json["status"],
        message: json["message"],
        data: json["data"] == null
            ? []
            : List<Category>.from(
                json["data"]!.map((x) => Category.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "status": status,
        "message": message,
        "data":
            data == null ? [] : List<dynamic>.from(data!.map((x) => x.toMap())),
      };
}

class Category {
  final String? id;
  final String? name;
  final dynamic deletedAt;
  final List<Provider>? provider;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  Category({
    this.id,
    this.name,
    this.deletedAt,
    this.provider,
    this.createdAt,
    this.updatedAt,
  });

  factory Category.fromJson(String str) => Category.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Category.fromMap(Map<String, dynamic> json) => Category(
        id: json["id"],
        name: json["name"],
        deletedAt: json["deleted_at"],
        provider: json["provider"] == null
            ? []
            : List<Provider>.from(
                json["provider"]!.map((x) => Provider.fromMap(x))),
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "deleted_at": deletedAt,
        "provider": provider == null
            ? []
            : List<dynamic>.from(provider!.map((x) => x.toMap())),
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
      };
}

class Provider {
  final String? id;
  final String? categoryId;
  final String? name;
  final bool? type;
  final String? icon;
  final String? description;
  final dynamic deletedAt;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  Provider({
    this.id,
    this.categoryId,
    this.name,
    this.type,
    this.icon,
    this.description,
    this.deletedAt,
    this.createdAt,
    this.updatedAt,
  });

  factory Provider.fromJson(String str) => Provider.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Provider.fromMap(Map<String, dynamic> json) => Provider(
        id: json["id"],
        categoryId: json["category_id"],
        name: json["name"],
        type: json["type"],
        icon: json["icon"],
        description: json["description"],
        deletedAt: json["deleted_at"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "category_id": categoryId,
        "name": name,
        "type": type,
        "icon": icon,
        "description": description,
        "deleted_at": deletedAt,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
      };
}
