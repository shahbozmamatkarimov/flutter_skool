import 'package:dio/dio.dart';
// import 'package:skool/core/resources/data_state.dart';

import '../entities/user_account_request.dart';

abstract class CommunityRepo {
  Future<DataState<String>> changePicture({
    required CommunityRequest accountRequest,
    required MultipartFile file,
  });
  Future<DataState<String>> removePicture({
    required CommunityRequest accountRequest,
  });
}
