import 'package:json_annotation/json_annotation.dart';

part 'community.g.dart';

@JsonSerializable()
class Community {
  int? id;
  String? name;
  int? categoryId;
  int? userId;
  String? groupType;
  String? groupPrice;
  String? description;
  String? username;
  String? image;
  DateTime? createdAt;
  DateTime? updatedAt;

    @override
  String toString() {
    return 'Community{id: $id, country: $name, description: $description}';
  }

  Community({
    this.id,
    this.name,
    this.categoryId,
    this.userId,
    this.groupType,
    this.groupPrice,
    this.description,
    this.username,
    this.image,
    this.createdAt,
    this.updatedAt,
  });

  factory Community.fromJson(Map<String, dynamic> json) =>
      _$CommunityFromJson(json);

  Map<String, dynamic> toJson() => _$CommunityToJson(this);
}
