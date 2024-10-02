import 'package:flutter/material.dart';
import 'package:news_app_thrwat/featuers/home/data/models/item_model_for_news.dart';

import '../../../../../core/utilies/app_colors.dart';
import '../../../../../core/utilies/app_images.dart';
import '../../../../../core/utilies/app_texts.dart';

class ItemWidgetForNews extends StatelessWidget {
  const ItemWidgetForNews({super.key, required this.itemModelForNews});
  final ItemModelForNews itemModelForNews;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(itemModelForNews.image)),
        const SizedBox(height: 5,),
        Text(
          itemModelForNews.title,
          style: const TextStyle(
              color: AppColors.black,
              fontSize: 20,
              fontWeight: FontWeight.w700
          ),
        ),
        const SizedBox(height: 4,),
        Text(
          itemModelForNews.desc,
          style: const TextStyle(
              color: AppColors.grey,
              fontSize: 20,
              fontWeight: FontWeight.w500
          ),
        ),
      ],
    );
  }
}
