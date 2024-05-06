import 'package:json_annotation/json_annotation.dart';

part 'community_category.g.dart';

@JsonSerializable()
class CommunityCategory {
  final int? id;
  final String? name;
  final String? icon;

  @override
  String toString() {
    return 'CommunityCategory{id: $id, country: $name, city: $icon}';
  }

  const CommunityCategory({
    this.id,
    this.name,
    this.icon,
  });

  factory CommunityCategory.fromJson(Map<String, dynamic> json) =>
      _$CommunityCategoryFromJson(json);

  Map<String, dynamic> toJson() => _$CommunityCategoryToJson(this);
}
