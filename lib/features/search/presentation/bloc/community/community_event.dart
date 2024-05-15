part of 'community_bloc.dart';

abstract class CommunityEvent extends Equatable {
  const CommunityEvent();
}

class GetCommunity extends CommunityEvent {
  @override
  List<Object?> get props => [];
}