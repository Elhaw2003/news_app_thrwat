import 'package:flutter/material.dart';
import 'package:news_app_thrwat/featuers/home/presentation/view/home_screen.dart';

main(){
  runApp(const NewsAppThrwat());
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
