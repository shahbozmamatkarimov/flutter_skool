// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'community.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CommunityEntity _$CommunityEntityFromJson(Map<String, dynamic> json) =>
    CommunityEntity(
      id: json['id'] as int,
      name: json['name'] as String?,
      icon: json['icon'] as String?,
    );

Map<String, dynamic> _$CommunityEntityToJson(CommunityEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'icon': instance.icon,
    };
