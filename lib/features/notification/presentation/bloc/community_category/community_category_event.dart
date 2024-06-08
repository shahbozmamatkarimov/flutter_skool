part of 'community_category_bloc.dart';

abstract class CommunityCategoryEvent extends Equatable {
  const CommunityCategoryEvent();
}

class GetCommunityCategory extends CommunityCategoryEvent {
  @override
  List<Object?> get props => [];
}
