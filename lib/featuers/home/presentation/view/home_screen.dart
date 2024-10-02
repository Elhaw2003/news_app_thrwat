import 'package:flutter/material.dart';
import 'package:news_app_thrwat/featuers/home/presentation/view/widgets/home_appbar.dart';
import 'package:news_app_thrwat/featuers/home/presentation/view/widgets/home_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        flexibleSpace: const HomeAppbar(),
      ),
      body: const HomeBody(),
    );
  }
}
