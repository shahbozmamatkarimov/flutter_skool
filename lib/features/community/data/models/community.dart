import 'package:json_annotation/json_annotation.dart';

part 'community.g.dart';

@JsonSerializable()
class Community {
  int? id;
  String? name;
  int? category_id;
  int? user_id;
  String? group_type;
  String? group_price;
  String? description;
  String? username;
  String? image;
  DateTime? created_at;
  DateTime? updated_at;

  @override
  String toString() {
    return 'Community{id: $id, country: $name, description: $description}';
  }

  Community({
    this.id,
    this.name,
    this.category_id,
    this.user_id,
    this.group_type,
    this.group_price,
    this.description,
    this.username,
    this.image,
    this.created_at,
    this.updated_at,
  });

  factory Community.fromJson(Map<String, dynamic> json) =>
      _$CommunityFromJson(json);

  Map<String, dynamic> toJson() => _$CommunityToJson(this);
}
