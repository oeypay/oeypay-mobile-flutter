class Operator {
  String? id;
  String? name;
  String? providerId;
  String? description;
  String? icon;
  dynamic deletedAt;
  String? createdAt;
  String? updatedAt;

  Operator({
    this.id,
    this.name,
    this.providerId,
    this.description,
    this.icon,
    this.deletedAt,
    this.createdAt,
    this.updatedAt,
  });

  factory Operator.fromJson(Map<String, dynamic> json) => Operator(
        id: json['id'] as String?,
        name: json['name'] as String?,
        providerId: json['provider_id'] as String?,
        description: json['description'] as String?,
        icon: json['icon'] as String?,
        deletedAt: json['deleted_at'] as dynamic,
        createdAt: json['created_at'] as String?,
        updatedAt: json['updated_at'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'provider_id': providerId,
        'description': description,
        'icon': icon,
        'deleted_at': deletedAt,
        'created_at': createdAt,
        'updated_at': updatedAt,
      };
}
