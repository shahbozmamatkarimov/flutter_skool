// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ErrorResponse _$ErrorResponseFromJson(Map<String, dynamic> json) =>
    ErrorResponse(
      message: json['message'] as String?,
      error: json['error'] as String?,
      status: json['status'] as int,
    );

Map<String, dynamic> _$ErrorResponseToJson(ErrorResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'error': instance.error,
      'status': instance.status,
    };
