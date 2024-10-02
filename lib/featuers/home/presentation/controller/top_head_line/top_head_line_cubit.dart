import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app_thrwat/featuers/home/data/models/item_model_for_news.dart';
import 'package:news_app_thrwat/featuers/home/data/repos/home_repo.dart';
import 'package:news_app_thrwat/featuers/home/presentation/controller/top_head_line/top_head_line_states.dart';

class TopHeadLineCubit extends Cubit<TopHeadLineState>{
  TopHeadLineCubit({required this.homeRepo}) : super(TopHeadLineInitialState());
  final HomeRepo homeRepo;
  List<ItemModelForNews> topHeadLines = [];
  Future<void> getTopHeadLineCubitFunc()async{
    emit(TopHeadLineLoadingState());
    var result =await homeRepo.getTopHeadLineFunc();

    return result.fold(
        (left){
          emit(TopHeadLineFailureState(errorMessage: left.errorMessage));
        },
        (right){
          topHeadLines = right;
          emit(TopHeadLineSuccessState());
        }
    );

  }

}