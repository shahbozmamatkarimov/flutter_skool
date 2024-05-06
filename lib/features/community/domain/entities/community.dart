import 'package:json_annotation/json_annotation.dart';

part 'communityEntity.g.dart';

@JsonSerializable()
class CommunityEntity {
  final int id;
  final String? name;
  final String? icon;

  @override
  String toString() {
    return 'CommunityEntity{id: $id, country: $name, city: $icon}';
  }

  const CommunityEntity({
    required this.id,
    this.name,
    this.icon,
  });

  CommunityEntity copyWith({
        int? id,
        String? name,
        String? icon,
    }) => 
        CommunityEntity(
            id: id ?? this.id,
            name: name ?? this.name,
            icon: icon ?? this.icon,
        );

  factory CommunityEntity.fromJson(Map<String, dynamic> json) =>
      _$CommunityEntityFromJson(json);

  Map<String, dynamic> toJson() => _$CommunityEntityToJson(this);
}
