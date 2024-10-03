import 'package:cached_network_image/cached_network_image.dart';
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
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10)
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: CachedNetworkImage(
              imageUrl: itemModelForNews.image != null && itemModelForNews.image!.isNotEmpty
                  ? itemModelForNews.image!
                  : 'https://via.placeholder.com/200',  // Fallback image URL
              placeholder: (context, url) => const Center(
                child: CircularProgressIndicator(color: AppColors.blue),
              ),
              errorWidget: (context, url, error) => const Icon(Icons.error_outlined),
            ),
          ),
        ),
        const SizedBox(height: 5,),
        Text(
          itemModelForNews.title??AppTexts.noTitleFounded,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
              color: AppColors.black,
              fontSize: 20,
              fontWeight: FontWeight.w700
          ),
        ),
        const SizedBox(height: 4,),
        Text(
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          itemModelForNews.desc??AppTexts.noDescriptionFounded,
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
