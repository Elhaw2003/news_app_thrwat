import 'package:flutter/material.dart';

import '../../../../../core/utilies/app_colors.dart';
import '../../../../../core/utilies/app_images.dart';
import '../../../../../core/utilies/app_texts.dart';
import '../../../data/models/item_model_horizintal_view.dart';

class ItemWidgetHorizintalView extends StatelessWidget {
  const ItemWidgetHorizintalView({super.key, required this.itemModelHorizintalView});
  final ItemModelHorizintalView itemModelHorizintalView;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(itemModelHorizintalView.image),
            Text(
              itemModelHorizintalView.title,
              style: const TextStyle(
                  color: AppColors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w600
              ),
            )
          ],
        ),
      ),
    );
  }
}
