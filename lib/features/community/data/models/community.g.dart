// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'community.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Community _$CommunityFromJson(Map<String, dynamic> json) => Community(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      category_id: (json['category_id'] as num?)?.toInt(),
      user_id: (json['user_id'] as num?)?.toInt(),
      group_type: json['group_type'] as String?,
      group_price: json['group_price'] as String?,
      description: json['description'] as String?,
      username: json['username'] as String?,
      image: json['image'] as String?,
      created_at: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updated_at: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$CommunityToJson(Community instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'category_id': instance.category_id,
      'user_id': instance.user_id,
      'group_type': instance.group_type,
      'group_price': instance.group_price,
      'description': instance.description,
      'username': instance.username,
      'image': instance.image,
      'created_at': instance.created_at?.toIso8601String(),
      'updated_at': instance.updated_at?.toIso8601String(),
    };
