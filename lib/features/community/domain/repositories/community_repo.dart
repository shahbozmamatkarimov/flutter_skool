import 'package:skool/core/resources/data_state.dart';
import 'package:skool/features/community/data/models/community.dart';
import 'package:skool/features/community/data/models/community_category.dart';

abstract class CommunityRepo {
  Future<DataState<List<CommunityCategory>>> getCommunityCategory();
  Future<DataState<List<Community>>> getCommunity();
}
