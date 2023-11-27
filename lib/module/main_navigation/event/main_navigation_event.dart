abstract class MainNavigationEvent {}

class MainNavigationIncrementEvent extends MainNavigationEvent {}

class MainNavigationUpdateIndexEvent extends MainNavigationEvent {
  final int selectedIndex;
  MainNavigationUpdateIndexEvent({required this.selectedIndex});
}
