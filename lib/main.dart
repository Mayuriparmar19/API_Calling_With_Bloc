import 'dart:math';

import 'package:api_calling_with_bloc/Data/my_user_model.dart';
import 'package:api_calling_with_bloc/Data/post_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'Pages/home_page.dart';

void main() {

      // PostRepository postRepository = PostRepository();
      //  List<MyAPI> myApi = await postRepository.fetchPosts();
      //       if(kDebugMode)
      //         {
      //           print(myApi.toString());
      //         }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bloc API Demo',
      theme: ThemeData(),
      home: const Home(),
    );
  }
}
