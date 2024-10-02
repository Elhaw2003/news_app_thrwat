import 'package:flutter/material.dart';
import 'package:news_app_thrwat/featuers/home/data/lists/items_list_for_news.dart';
import 'package:news_app_thrwat/featuers/home/data/lists/items_list_horizintal.dart';
import 'package:news_app_thrwat/featuers/home/presentation/view/widgets/list_view_for_news.dart';
import 'package:news_app_thrwat/featuers/home/presentation/view/widgets/list_view_horizintal_for_news.dart';
class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child:  SizedBox(height: 10,),
          ),
          SliverToBoxAdapter(
            child: ListViewHorizintalForNews(
              items: itemsListHorizintal,
            ),
          ),
          const SliverToBoxAdapter(
            child:  SizedBox(height: 25,),
          ),
          SliverFillRemaining(
            child: ListViewForNews(news: news,),
          )
        ],
      )
    );
  }
}