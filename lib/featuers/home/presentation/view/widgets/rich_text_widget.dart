import 'package:flutter/material.dart';

import '../../../../../core/utilies/app_colors.dart';
import '../../../../../core/utilies/app_texts.dart';

class RichTextWidget extends StatelessWidget {
  const RichTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(
            text: AppTexts.news,
            style: TextStyle(
              color: AppColors.black,
              fontWeight: FontWeight.w700,
              fontSize: 18,
            ),
            children: [
              TextSpan(
                text: AppTexts.cloud,
                style: TextStyle(
                  color: AppColors.yellow,
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                ),
              )
            ]
        )
    );
  }
}
