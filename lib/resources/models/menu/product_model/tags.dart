class Tags {
  String? id;
  String? name;
  String? operatorId;
  String? description;
  dynamic deletedAt;
  String? createdAt;
  String? updatedAt;

  Tags({
    this.id,
    this.name,
    this.operatorId,
    this.description,
    this.deletedAt,
    this.createdAt,
    this.updatedAt,
  });

  factory Tags.fromJson(Map<String, dynamic> json) => Tags(
        id: json['id'] as String?,
        name: json['name'] as String?,
        operatorId: json['operator_id'] as String?,
        description: json['description'] as String?,
        deletedAt: json['deleted_at'] as dynamic,
        createdAt: json['created_at'] as String?,
        updatedAt: json['updated_at'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'operator_id': operatorId,
        'description': description,
        'deleted_at': deletedAt,
        'created_at': createdAt,
        'updated_at': updatedAt,
      };
}
