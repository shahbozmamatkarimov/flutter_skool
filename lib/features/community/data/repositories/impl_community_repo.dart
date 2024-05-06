// import 'package:skool/core/di/locator.dart';
// import 'package:skool/core/error/error_response.dart';
// import 'package:skool/core/error/exception_handler.dart';
// import 'package:skool/core/network/urls.dart';
// import 'package:skool/core/resources/app_keys.dart';
// import 'package:skool/core/resources/data_state.dart';
// import 'package:skool/features/auth/data/models/data/data_response.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:skool/core/error/exception_handler.dart';
import 'package:skool/core/resources/data_state.dart';
import 'package:skool/features/community/data/models/community.dart';
import 'package:skool/features/community/domain/repositories/community_repo.dart';

// import '../../domain/entities/update_community_request.dart';
// import '../../domain/entities/user_account_request.dart';
// import '../../domain/repositories/community_repo.dart';
import '../data_sources/community_service.dart';
import '../models/community_category.dart';

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
  Future<DataState<List<CommunityCategory>>> getCommunityCategory() async {
    try {
      final result = await communityService.getCommunityCategory();
      return DataSuccess<List<CommunityCategory>>(data: result.data);
    } catch (e) {
      return DataException.getError<List<CommunityCategory>>(e);
    }
  }

  @override
  Future<DataState<List<Community>>> getCommunity() async {
    try {
      final result = await communityService.getCommunity();
      return DataSuccess<List<Community>>(data: result.data);
    } catch (e) {
      return DataException.getError<List<Community>>(e);
    }
  }
}
