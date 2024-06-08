part of 'community_bloc.dart';

abstract class CommunityState extends Equatable {
  const CommunityState();
}

class CommunityInitial extends CommunityState {
  @override
  List<Object> get props => [];
}

class Loading extends CommunityState {
  @override
  List<Object> get props => [];
}

class LoggedOut extends CommunityState {
  @override
  List<Object> get props => [];
}

class LoadedCommunityData extends CommunityState {
  final List<Community> community;
  final StateStatus status;
  final String? error;
  final int tabIndex;
  const LoadedCommunityData({
    required this.community,
    this.error,
    this.status = StateStatus.normal,
    this.tabIndex = 0,
  });

  @override
  List<Object> get props => [community, status, tabIndex];
}

class SuccessUpdate extends CommunityState {
  @override
  List<Object> get props => [];
}

class Error extends CommunityState {
  final String? error;

  const Error({this.error});
  @override
  List<Object> get props => [];
}

class ErrorLoadingCommunityData extends CommunityState {
  final String errorMessage;

  ErrorLoadingCommunityData(this.errorMessage);

  @override
  List<Object?> get props => [errorMessage];
}
