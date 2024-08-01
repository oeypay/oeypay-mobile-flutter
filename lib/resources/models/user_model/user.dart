class User {
  String? id;
  String? name;
  dynamic email;
  String? phone;
  String? status;
  String? pin;
  String? referral;
  dynamic deletedAt;
  DateTime? createdAt;
  DateTime? updatedAt;

  User({
    this.id,
    this.name,
    this.email,
    this.phone,
    this.status,
    this.pin,
    this.referral,
    this.deletedAt,
    this.createdAt,
    this.updatedAt,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json['id'] as String?,
        name: json['name'] as String?,
        email: json['email'] as dynamic,
        phone: json['phone'] as String?,
        status: json['status'] as String?,
        pin: json['pin'] as String?,
        referral: json['referral'] as String?,
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
        'name': name,
        'email': email,
        'phone': phone,
        'status': status,
        'pin': pin,
        'referral': referral,
        'deleted_at': deletedAt,
        'created_at': createdAt?.toIso8601String(),
        'updated_at': updatedAt?.toIso8601String(),
      };
}
