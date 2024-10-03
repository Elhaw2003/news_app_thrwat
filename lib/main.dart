import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app_thrwat/featuers/home/data/repos/home_repo_implementation.dart';
import 'package:news_app_thrwat/featuers/home/presentation/controller/top_head_line/top_head_line_cubit.dart';
import 'package:news_app_thrwat/featuers/home/presentation/view/home_screen.dart';

main() {
  runApp(BlocProvider(
    create: (context) =>  TopHeadLineCubit(homeRepo: HomeRepoImplementationApi()),
    child: const NewsAppThrwat(),
  ));
}

class NewsAppThrwat extends StatelessWidget {
  const NewsAppThrwat({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
