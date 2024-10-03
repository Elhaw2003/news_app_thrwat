import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app_thrwat/featuers/home/presentation/view/widgets/home_appbar.dart';
import 'package:news_app_thrwat/featuers/home/presentation/view/widgets/home_body.dart';

import '../controller/top_head_line/top_head_line_cubit.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    // TODO: implement initState
    BlocProvider.of<TopHeadLineCubit>(context).getTopHeadLineCubitFunc();
  }
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
