import 'package:flutter/material.dart';
import 'package:news_app_thrwat/featuers/home/data/models/item_model_for_news.dart';
import 'package:news_app_thrwat/featuers/home/presentation/view/widgets/item_widget_for_news.dart';

class ListViewForNews extends StatelessWidget {
  const ListViewForNews({super.key, required this.news});
  final List<ItemModelForNews> news;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const BouncingScrollPhysics(),
      separatorBuilder: (context, index) => const SizedBox(height: 10,),
      itemCount: news.length,
        itemBuilder: (context, index) {
          return ItemWidgetForNews(itemModelForNews: news[index]);
        },
    );
  }
}
