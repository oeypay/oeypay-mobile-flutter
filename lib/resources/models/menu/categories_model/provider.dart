class Provider {
  String? id;
  String? categoryId;
  String? name;
  bool? type;
  String? icon;
  String? description;
  dynamic deletedAt;
  DateTime? createdAt;
  DateTime? updatedAt;

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

  factory Provider.fromJson(Map<String, dynamic> json) => Provider(
        id: json['id'] as String?,
        categoryId: json['category_id'] as String?,
        name: json['name'] as String?,
        type: json['type'] as bool?,
        icon: json['icon'] as String?,
        description: json['description'] as String?,
        deletedAt: json['deleted_at'] as dynamic,
        createdAt: json['created_at'] == null
            ? null
            : DateTime.parse(json['created_at'] as String),
        updatedAt: json['updated_at'] == null
            ? null
            : DateTime.parse(json['updated_at'] as String),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'category_id': categoryId,
        'name': name,
        'type': type,
        'icon': icon,
        'description': description,
        'deleted_at': deletedAt,
        'created_at': createdAt?.toIso8601String(),
        'updated_at': updatedAt?.toIso8601String(),
      };
}
