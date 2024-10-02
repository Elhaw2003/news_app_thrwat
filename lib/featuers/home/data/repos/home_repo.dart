import 'package:dartz/dartz.dart';
import 'package:news_app_thrwat/core/errors/failure.dart';
import 'package:news_app_thrwat/featuers/home/data/models/item_model_for_news.dart';

abstract class HomeRepo {

  Future<Either<Failure , List<ItemModelForNews>>> getTopHeadLineFunc();


}