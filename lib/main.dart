import 'package:flutter/material.dart';

main(){
  runApp(const NewsAppThrwat());
}
class NewsAppThrwat extends StatelessWidget {
  const NewsAppThrwat({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    );
  }
}
