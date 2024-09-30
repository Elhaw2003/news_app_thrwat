import 'package:flutter/material.dart';
import 'package:news_app_thrwat/core/utilies/app_colors.dart';
import 'package:news_app_thrwat/core/utilies/app_texts.dart';
import 'package:news_app_thrwat/featuers/home/data/lists/items_list_for_news.dart';
import 'package:news_app_thrwat/featuers/home/data/lists/items_list_horizintal.dart';
import 'package:news_app_thrwat/featuers/home/presentation/view/widgets/list_view_for_news.dart';
import 'package:news_app_thrwat/featuers/home/presentation/view/widgets/list_view_horizintal_for_news.dart';
import 'package:news_app_thrwat/featuers/home/presentation/view/widgets/rich_text_widget.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child:  SizedBox(height: 65,),
          ),
          const SliverToBoxAdapter(
            child:  RichTextWidget(),
          ),
          const SliverToBoxAdapter(
            child:  SizedBox(height: 15,),
          ),
          SliverToBoxAdapter(
            child: ListViewHorizintalForNews(
              items: itemsListHorizintal,
            ),
          ),
          const SliverToBoxAdapter(
            child:  SizedBox(height: 2,),
          ),
          SliverFillRemaining(
            child: ListViewForNews(news: news,),
          )
        ],
      )
    );
  }
}
// Column(
//         children: [
//           const SizedBox(height: 65,),
//           const RichTextWidget(),
//           const SizedBox(height: 15,),
//           ListViewHorizintalForNews(
//             items: itemsListHorizintal,
//           ),
//           const SizedBox(height: 2,),
//           Expanded(child: ListViewForNews(news: news,)),
//         ],
//       ),
