import 'package:flutter/material.dart';
import 'package:news_app_thrwat/core/utilies/app_colors.dart';
import 'package:news_app_thrwat/core/utilies/app_images.dart';
import 'package:news_app_thrwat/core/utilies/app_texts.dart';
import 'package:news_app_thrwat/featuers/home/data/models/item_model_horizintal_view.dart';
import 'package:news_app_thrwat/featuers/home/presentation/view/widgets/item_widget_horizintal_view.dart';

class ListViewHorizintalForNews extends StatelessWidget {
  const ListViewHorizintalForNews({super.key, required this.items});
  final List<ItemModelHorizintalView> items;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.separated(
        separatorBuilder: (context, index) => SizedBox(width: 15,),
        itemCount: items.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return ItemWidgetHorizintalView(
            itemModelHorizintalView: items[index],
          );
        },
      ),
    );
  }
}
