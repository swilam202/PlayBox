abstract class HomePageState {}

class HomePageInitialState extends HomePageState {}

class HomePageLoadingState extends HomePageState {}

class HomePageFailureState extends HomePageState {}

class HomePageSuccessState extends HomePageState {
  String path;

  HomePageSuccessState({required this.path});
}
