import 'package:dio/dio.dart';
// import 'package:skool/core/di/locator.dart';
// import 'package:skool/core/error/error_response.dart';
// import 'package:skool/core/error/exception_handler.dart';
// import 'package:skool/core/network/urls.dart';
// import 'package:skool/core/resources/app_keys.dart';
// import 'package:skool/core/resources/data_state.dart';
// import 'package:skool/features/auth/data/models/data/data_response.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:skool/features/community/domain/repositories/profile_repo.dart';

// import '../../domain/entities/update_community_request.dart';
// import '../../domain/entities/user_account_request.dart';
// import '../../domain/repositories/community_repo.dart';
import '../data_sources/community_service.dart';
import '../models/community.dart';

class ImplCommunityRepo extends CommunityRepo {
  final CommunityService communityService;
  late SharedPreferences preferences;

  ImplCommunityRepo({
    required this.communityService,
  }) {
    initialize();
  }

  void initialize() async {
    preferences = await SharedPreferences.getInstance();
  }

  @override
  Future<DataState<Community>> getMyCommunity() async {
    try {
      final result = await communityService.getMyCommunity();
      return DataSuccess<Community>(data: result.data);
    } catch (e) {
      return DataException.getError<Community>(e);
    }
  }

  // @override
  // Future<DataState<String>> changePicture({
  //   required CommunityAccountRequest accountRequest,
  //   required MultipartFile file,
  // }) async {
  //   try {
  //     final Map<String, dynamic> request2 = {
  //       'email': accountRequest.email,
  //       'phone': accountRequest.phone,
  //       'account.name': accountRequest.name,
  //       'account.surname': accountRequest.surname,
  //       'account.image.file': file,
  //     };

  //     final formData = FormData.fromMap(request2);

  //     final dio = locator<Dio>();
  //     Response response = await dio.put('${Urls.baseURl}user', data: formData);

  //     final result = DataResponse.fromJson(response.data);
  //     if (response.statusCode == 200) {
  //       final token = result.data;
  //       locator<Dio>().options.headers['Authorization'] = 'Bearer $token';
  //       preferences.setString(AppKeys.token, token);

  //       return DataSuccess<String>(data: token);
  //     } else {
  //       return DataError<String>(ErrorResponse(
  //           status: response.statusCode ?? 0, message: response.statusMessage));
  //     }
  //   } catch (e) {
  //     return DataException.getError<String>(e);
  //   }
  // }

  // @override
  // Future<DataState<String>> removePicture({
  //   required CommunityAccountRequest accountRequest,
  // }) async {
  //   try {
  //     final Map<String, dynamic> request2 = {
  //       'email': accountRequest.email,
  //       'phone': accountRequest.phone,
  //       'account.name': accountRequest.name,
  //       'account.surname': accountRequest.surname,
  //       'account.image.delete': true,
  //     };

  //     final formData = FormData.fromMap(request2);

  //     final dio = locator<Dio>();
  //     Response response = await dio.put('${Urls.baseURl}user', data: formData);

  //     final result = DataResponse.fromJson(response.data);
  //     if (response.statusCode == 200) {
  //       final token = result.data;
  //       locator<Dio>().options.headers['Authorization'] = 'Bearer $token';
  //       preferences.setString(AppKeys.token, token);

  //       return DataSuccess<String>(data: token);
  //     } else {
  //       return DataError<String>(ErrorResponse(
  //           status: response.statusCode ?? 0, message: response.statusMessage));
  //     }
  //   } catch (e) {
  //     return DataException.getError<String>(e);
  //   }
  // }

  // @override
  // Future<DataState> updateCommunity(
  //     {required UpdateCommunityRequest updateCommunityRequest}) async {
  //   try {
  //     final Map<String, dynamic> request2 = updateCommunityRequest.toJson();

  //     final formData = FormData.fromMap(request2);

  //     final dio = locator<Dio>();
  //     Response response = await dio.put('${Urls.baseURl}user', data: formData);

  //     final result = DataResponse.fromJson(response.data);
  //     if (response.statusCode == 200) {
  //       final token = result.data;
  //       locator<Dio>().options.headers['Authorization'] = 'Bearer $token';
  //       preferences.setString(AppKeys.token, token);

  //       return DataSuccess<String>(data: token);
  //     } else {
  //       return DataError<String>(ErrorResponse(
  //           status: response.statusCode ?? 0, message: response.statusMessage));
  //     }
  //   } catch (e) {
  //     return DataException.getError<String>(e);
  //   }
  // }
}
