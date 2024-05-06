part of 'community_category_bloc.dart';

abstract class CommunityCategoryState extends Equatable {
  const CommunityCategoryState();
}

class CommunityCategoryInitial extends CommunityCategoryState {
  @override
  List<Object> get props => [];
}

class Loading extends CommunityCategoryState {
  @override
  List<Object> get props => [];
}

class LoggedOut extends CommunityCategoryState {
  @override
  List<Object> get props => [];
}

class LoadedCommunityData extends CommunityCategoryState {
  final List<CommunityCategory> user;
  final StateStatus status;
  final String? error;
  final int tabIndex;
  const LoadedCommunityData({
    required this.user,
    this.error,
    this.status = StateStatus.normal,
    this.tabIndex = 0,
  });

  @override
  List<Object> get props => [user, status, tabIndex];
}

class SuccessUpdate extends CommunityCategoryState {
  @override
  List<Object> get props => [];
}

class Error extends CommunityCategoryState {
  final String? error;

  const Error({this.error});
  @override
  List<Object> get props => [];
}

class ErrorLoadingCommunityData extends CommunityCategoryState {
  final String errorMessage;

  ErrorLoadingCommunityData(this.errorMessage);

  @override
  List<Object?> get props => [errorMessage];
}
