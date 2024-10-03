import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app_thrwat/core/utilies/app_colors.dart';
import 'package:news_app_thrwat/core/utilies/app_texts.dart';
import 'package:news_app_thrwat/featuers/home/data/lists/items_list_horizintal.dart';
import 'package:news_app_thrwat/featuers/home/presentation/controller/top_head_line/top_head_line_cubit.dart';
import 'package:news_app_thrwat/featuers/home/presentation/controller/top_head_line/top_head_line_states.dart';
import 'package:news_app_thrwat/featuers/home/presentation/view/widgets/list_view_for_news.dart';
import 'package:news_app_thrwat/featuers/home/presentation/view/widgets/list_view_horizintal_for_news.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      color: AppColors.blue,
      onRefresh: () async{
        return BlocProvider.of<TopHeadLineCubit>(context).getTopHeadLineCubitFunc();
      },
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: CustomScrollView(
            slivers: [
              const SliverToBoxAdapter(
                child: SizedBox(height: 10,),
              ),
              SliverToBoxAdapter(
                child: ListViewHorizintalForNews(
                  items: itemsListHorizintal,
                ),
              ),
              const SliverToBoxAdapter(
                child: SizedBox(height: 25,),
              ),
              BlocConsumer<TopHeadLineCubit, TopHeadLineState>(
                listener: (context, state) {
                },
                builder: (context, state) {
                  return SliverFillRemaining(
                    child: state is TopHeadLineLoadingState?
                    const Center(
                      child: CircularProgressIndicator(color: AppColors.blue,),)
                        :state is TopHeadLineFailureState ?
                    Center(
                      child: Column(
                        children: [
                          Text(
                              state.errorMessage,
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 19
                            ),
                          ),
                          const SizedBox(height: 20,),
                          GestureDetector(
                              child: Container(
                                  child: Text(
                                    AppTexts.tryAgain,
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 19,
                                      color: AppColors.white
                                    ),
                                  ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: AppColors.grey
                                ),
                                padding: EdgeInsets.all(9),
                              ),
                            onTap: (){
                              BlocProvider.of<TopHeadLineCubit>(context).getTopHeadLineCubitFunc();
                            },
                          )
                        ],
                        mainAxisAlignment: MainAxisAlignment.center,
                      ),
                    ): ListViewForNews(
                      news: BlocProvider.of<TopHeadLineCubit>(context).topHeadLines,
                    ),
                  );
                },
              )
            ],
          )
      ),
    );
  }
}