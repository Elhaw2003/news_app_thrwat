import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:news_app_thrwat/core/errors/failure.dart';
import 'package:news_app_thrwat/core/utilies/end_points.dart';
import 'package:news_app_thrwat/featuers/home/data/models/item_model_for_news.dart';
import 'package:news_app_thrwat/featuers/home/data/repos/home_repo.dart';
class HomeRepoImplementation implements HomeRepo{
  List<ItemModelForNews> news = [];
  final dio = Dio();
  @override
  Future<Either<Failure, List<ItemModelForNews>>> getTopHeadLineFunc() async{
    try{
      var response = await dio.get("${EndPoints.baseUrl}${EndPoints.topHeadLineEndPoint}?category=sports&apiKey=${EndPoints.apiKey}");

      if (response.statusCode == 200){
        for (var article in response.data["articles"]){
          ItemModelForNews itemModelForNews = ItemModelForNews(
              image: article["urlToImage"],
              title: article["title"],
              desc: article["description"]
          );
          news.add(itemModelForNews);
        }
        return right(news);
      }else{
        return left(ApiFailure(errorMessage: response.data["message"]));
      }
    }catch(e){
      return left(ApiFailure(errorMessage: "Opps Error"));
    }
  }

}