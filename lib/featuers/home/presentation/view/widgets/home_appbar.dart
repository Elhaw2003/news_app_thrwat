import 'package:flutter/material.dart';
import 'package:news_app_thrwat/featuers/home/presentation/view/widgets/rich_text_widget.dart';
class HomeAppbar extends StatelessWidget {
  const HomeAppbar({super.key});
  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: const RichTextWidget(),
    );
  }
}
