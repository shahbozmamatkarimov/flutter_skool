// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'community.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Community _$CommunityFromJson(Map<String, dynamic> json) => Community(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      categoryId: (json['categoryId'] as num?)?.toInt(),
      userId: (json['userId'] as num?)?.toInt(),
      groupType: json['groupType'] as String?,
      groupPrice: json['groupPrice'] as String?,
      description: json['description'] as String?,
      username: json['username'] as String?,
      image: json['image'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$CommunityToJson(Community instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'categoryId': instance.categoryId,
      'userId': instance.userId,
      'groupType': instance.groupType,
      'groupPrice': instance.groupPrice,
      'description': instance.description,
      'username': instance.username,
      'image': instance.image,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
