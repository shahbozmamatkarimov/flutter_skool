import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:skool/core/resources/data_state.dart';
import 'package:skool/core/resources/state_status.dart';
import 'package:skool/features/community/data/models/community_category.dart';
import 'package:skool/features/community/domain/repositories/community_repo.dart';

part 'community_category_event.dart';
part 'community_category_state.dart';

class CommunityCategoryBloc
    extends Bloc<CommunityCategoryEvent, CommunityCategoryState> {
  final CommunityRepo communityCategoryRepo;
  int activeTabIndex = 0;
  late List<CommunityCategory> community;

  CommunityCategoryBloc({
    required this.communityCategoryRepo,
  }) : super(CommunityCategoryInitial()) {
    on<GetCommunityCategory>((event, emit) async {
      emit(Loading());
      try {
        final response = await communityCategoryRepo.getCommunityCategory();
        if (response is DataSuccess) {
          // community = response.data;
          List<CommunityCategory>? community = response.data;
          if (community != null) {
            emit(LoadedCommunityData(
              user: community,
              status: StateStatus.loaded,
            ));
          } else {
            emit(ErrorLoadingCommunityData("Failed to load community data"));
          }
        }
      } catch (e) {
        final errorMessage = 'Failed to load community data: $e';
        emit(ErrorLoadingCommunityData(errorMessage));
      }
    });

    add(GetCommunityCategory());
  }
}
