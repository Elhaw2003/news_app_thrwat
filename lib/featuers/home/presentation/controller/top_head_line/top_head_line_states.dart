abstract class TopHeadLineState {}
class TopHeadLineInitialState extends TopHeadLineState{}
class TopHeadLineLoadingState extends TopHeadLineState{}
class TopHeadLineFailureState extends TopHeadLineState{
  final String errorMessage;
  TopHeadLineFailureState({
    required this.errorMessage
});
}
class TopHeadLineSuccessState extends TopHeadLineState{}