part of 'bottom_nav_bar_bloc.dart';

abstract class BottomNavBarEvent extends Equatable {
  const BottomNavBarEvent();
}

class SetCurrentIndex extends BottomNavBarEvent {
  final int index;

  const SetCurrentIndex({
    required this.index,
  });

  @override
  List<Object?> get props => [index];
}

class ChangePageEvent extends BottomNavBarEvent {
  final String path;

  const ChangePageEvent({
    required this.path,
  });

  @override
  List<Object?> get props => [path];
}

class ChangePageIndexEvent extends BottomNavBarEvent {
  const ChangePageIndexEvent();

  @override
  List<Object?> get props => [];
}

class OpenMenu extends BottomNavBarEvent {
  const OpenMenu();

  @override
  List<Object?> get props => [];
}

class SetRouter extends BottomNavBarEvent {
  final TabsRouter router;

  const SetRouter({
    required this.router,
  });

  @override
  List<Object?> get props => [router];
}

class ClearRoute extends BottomNavBarEvent {
  const ClearRoute();

  @override
  List<Object?> get props => [];
}

class OpenPage extends BottomNavBarEvent {
  final String path;
  const OpenPage({required this.path});

  @override
  List<Object?> get props => [path];
}
