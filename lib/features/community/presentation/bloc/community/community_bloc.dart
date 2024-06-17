import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:skool/core/resources/data_state.dart';
import 'package:skool/core/resources/state_status.dart';
import 'package:skool/features/community/data/models/community.dart';
import 'package:skool/features/community/domain/repositories/community_repo.dart';
part 'community_event.dart';
part 'community_state.dart';

class CommunityBloc extends Bloc<CommunityEvent, CommunityState> {
  final CommunityRepo communityRepo;
  int activeTabIndex = 0;
  late List<Community> community;

  CommunityBloc({
    required this.communityRepo,
  }) : super(CommunityInitial()) {
    on<GetCommunity>((event, emit) async {
      emit(Loading());
      try {
        final response = await communityRepo.getCommunity();
        print("==$response");
        if (response is DataSuccess) {
          // community = response.data;
          List<Community>? community = response.data;
          if (community != null) {
            emit(LoadedCommunityData(
              community: community,
              status: StateStatus.loaded,
            ));
          } else {
            emit(ErrorLoadingCommunityData("Failed to load community data"));
          }
        }
      } catch (e) {
        print("==$e");
        final errorMessage = 'Failed to load community data: $e';
        emit(ErrorLoadingCommunityData(errorMessage));
      }
    });

    add(GetCommunity());
  }
}
