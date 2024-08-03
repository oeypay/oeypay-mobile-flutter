import 'package:oepay/resources/models/menu/categories_model/provider.dart';
import 'operator.dart';
import 'tags.dart';

class ProductModel {
  String? id;
  String? providerId;
  Provider? provider;
  String? operatorId;
  Operator? operator;
  String? tagsId;
  Tags? tags;
  String? name;
  String? description;
  int? price;
  int? admin;
  int? commission;
  int? stock;
  bool? status;
  String? buyerskukode;
  bool? multi;
  bool? buyerproductstatus;
  bool? sellerproductstatus;
  String? startCutOff;
  String? endCutOff;
  String? kategori;
  String? brand;
  String? tipe;
  String? jenis;
  String? sellername;
  DateTime? createdAt;
  DateTime? updatedAt;

  ProductModel({
    this.id,
    this.providerId,
    this.provider,
    this.operatorId,
    this.operator,
    this.tagsId,
    this.tags,
    this.name,
    this.description,
    this.price,
    this.admin,
    this.commission,
    this.stock,
    this.status,
    this.buyerskukode,
    this.multi,
    this.buyerproductstatus,
    this.sellerproductstatus,
    this.startCutOff,
    this.endCutOff,
    this.kategori,
    this.brand,
    this.tipe,
    this.jenis,
    this.sellername,
    this.createdAt,
    this.updatedAt,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
        id: json['id'] as String?,
        providerId: json['provider_id'] as String?,
        provider: json['provider'] == null
            ? null
            : Provider.fromJson(json['provider'] as Map<String, dynamic>),
        operatorId: json['operator_id'] as String?,
        operator: json['operator'] == null
            ? null
            : Operator.fromJson(json['operator'] as Map<String, dynamic>),
        tagsId: json['tags_id'] as String?,
        tags: json['tags'] == null
            ? null
            : Tags.fromJson(json['tags'] as Map<String, dynamic>),
        name: json['name'] as String?,
        description: json['description'] as String?,
        price: json['price'] as int?,
        admin: json['admin'] as int?,
        commission: json['commission'] as int?,
        stock: json['stock'] as int?,
        status: json['status'] as bool?,
        buyerskukode: json['buyerskukode'] as String?,
        multi: json['multi'] as bool?,
        buyerproductstatus: json['buyerproductstatus'] as bool?,
        sellerproductstatus: json['sellerproductstatus'] as bool?,
        startCutOff: json['start_cut_off'] as String?,
        endCutOff: json['end_cut_off'] as String?,
        kategori: json['kategori'] as String?,
        brand: json['brand'] as String?,
        tipe: json['tipe'] as String?,
        jenis: json['jenis'] as String?,
        sellername: json['sellername'] as String?,
        createdAt: json['created_at'] == null
            ? null
            : DateTime.parse(json['created_at'] as String),
        updatedAt: json['updated_at'] == null
            ? null
            : DateTime.parse(json['updated_at'] as String),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'provider_id': providerId,
        'provider': provider?.toJson(),
        'operator_id': operatorId,
        'operator': operator?.toJson(),
        'tags_id': tagsId,
        'tags': tags?.toJson(),
        'name': name,
        'description': description,
        'price': price,
        'admin': admin,
        'commission': commission,
        'stock': stock,
        'status': status,
        'buyerskukode': buyerskukode,
        'multi': multi,
        'buyerproductstatus': buyerproductstatus,
        'sellerproductstatus': sellerproductstatus,
        'start_cut_off': startCutOff,
        'end_cut_off': endCutOff,
        'kategori': kategori,
        'brand': brand,
        'tipe': tipe,
        'jenis': jenis,
        'sellername': sellername,
        'created_at': createdAt?.toIso8601String(),
        'updated_at': updatedAt?.toIso8601String(),
      };
}
