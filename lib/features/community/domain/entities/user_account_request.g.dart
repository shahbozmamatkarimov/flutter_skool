// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_account_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CommunityRequest _$CommunityRequestFromJson(Map<String, dynamic> json) =>
    CommunityRequest(
      name: json['name'] as String,
      surname: json['surname'] as String,
      phone: json['phone'] as String,
      email: json['email'] as String,
    );

Map<String, dynamic> _$CommunityRequestToJson(CommunityRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'surname': instance.surname,
      'phone': instance.phone,
      'email': instance.email,
    };
