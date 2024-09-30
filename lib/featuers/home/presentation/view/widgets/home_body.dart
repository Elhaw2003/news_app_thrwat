import 'package:flutter/material.dart';
import 'package:news_app_thrwat/core/utilies/app_colors.dart';
import 'package:news_app_thrwat/core/utilies/app_texts.dart';
import 'package:news_app_thrwat/featuers/home/data/lists/items_list_horizintal.dart';
import 'package:news_app_thrwat/featuers/home/presentation/view/widgets/list_view_horizintal_for_news.dart';
import 'package:news_app_thrwat/featuers/home/presentation/view/widgets/rich_text_widget.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: EdgeInsets.symmetric(horizontal: 22),
      child: Column(
        children: [
          const SizedBox(height: 65,),
          const RichTextWidget(),
          const SizedBox(height: 15,),
          ListViewHorizintalForNews(
            items: itemsListHorizintal,
          ),
        ],
      ),
    );
  }
}
