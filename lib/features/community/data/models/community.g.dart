// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'community.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Community _$CommunityFromJson(Map<String, dynamic> json) => Community(
      id: json['id'] as int,
      country: json['country'] as String?,
      city: json['city'] as String?,
      street: json['street'] as String?,
      houseNumber: json['houseNumber'] as String?,
      zipCode: json['zipCode'] as String?,
      additional: json['additional'] as String?,
    );

Map<String, dynamic> _$CommunityToJson(Community instance) => <String, dynamic>{
      'id': instance.id,
      'country': instance.country,
      'city': instance.city,
      'street': instance.street,
      'houseNumber': instance.houseNumber,
      'zipCode': instance.zipCode,
      'additional': instance.additional,
    };
