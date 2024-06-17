import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:skool/features/community/data/models/community.dart';
import 'package:skool/features/community/data/models/community_category.dart';
import 'package:skool/network/urls.dart';

part 'community_service.g.dart';

@RestApi(baseUrl: Urls.baseURl)
abstract class CommunityService {
  factory CommunityService(Dio dio, {String baseUrl}) = _CommunityService;
  factory CommunityService.create() {
    final dio = Dio();
    return CommunityService(dio);
  }

  @GET("get-group-categories")
  Future<HttpResponse<List<CommunityCategory>>> getCommunityCategory();

  @GET("get-group")
  Future<HttpResponse<List<Community>>> getCommunity();
}
