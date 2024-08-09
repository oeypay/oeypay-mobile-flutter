class PagesModel {
  final String? id;
  final String? title;
  final String? image;
  final String? description;
  final bool? type;
  final String? content;
  final String? categoryId;
  final String? author;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  PagesModel({
    this.id,
    this.title,
    this.image,
    this.description,
    this.type,
    this.content,
    this.categoryId,
    this.author,
    this.createdAt,
    this.updatedAt,
  });

  // Metode untuk membuat instance dari JSON
  factory PagesModel.fromJson(Map<String, dynamic> json) {
    return PagesModel(
      id: json['id'],
      title: json['title'],
      image: json['image'],
      description: json['description'],
      type: json['type'],
      content: json['content'],
      categoryId: json['categoryId'],
      author: json['author'],
      createdAt:
          json['createdAt'] != null ? DateTime.parse(json['createdAt']) : null,
      updatedAt:
          json['updatedAt'] != null ? DateTime.parse(json['updatedAt']) : null,
    );
  }

  // Metode untuk mengonversi instance ke JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'image': image,
      'description': description,
      'type': type,
      'content': content,
      'categoryId': categoryId,
      'author': author,
      'createdAt': createdAt?.toIso8601String(),
      'updatedAt': updatedAt?.toIso8601String(),
    };
  }
}
