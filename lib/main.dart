import 'package:api_calling_with_bloc/Logic/api_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
    return BlocProvider(
      create: (BuildContext context) => PostBlocCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Bloc API Demo',
        theme: ThemeData(),
        home: const Home(),
      ),
    );
  }
}
